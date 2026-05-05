import 'dart:developer';

import 'package:appointments/app/extensions/time_of_day_extension.dart';
import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/data/assets/asset_loader.dart';
import 'package:appointments/data/hive/methods/hive_appointments.dart';
import 'package:appointments/data/model/appointment_model.dart';
import 'package:appointments/data/model/create_appointment.dart';
import 'package:appointments/data/model/master_schedule.dart';
import 'package:appointments/data/model/slot_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:injectable/injectable.dart';

part 'create_appointment_state.dart';
part 'create_appointment_cubit.freezed.dart';

@lazySingleton
class CreateAppointmentCubit extends Cubit<CreateAppointmentState> {
  final TextEditingController clientNameController = TextEditingController();
  final FocusNode clientNameNode = FocusNode();
  CreateAppointmentCubit() : super(CreateAppointmentState()) {
    emit(state.copyWith(createdAppointment: CreateAppointment()));
    loadMasterSchedule();
    clientNameNode.requestFocus();
    clientNameController.addListener(() {
      setAppointmentClientName(clientNameController.text);
    });
  }

  void loadMasterSchedule() async {
    emit(state.copyWith(loading: true));

    try {
      final masterSchedule = await AssetLoader.loadMasterSchedule();
      final savedAppointments = await HiveAppointments.getAppointments();

      emit(
        state.copyWith(
          masterSchedule: masterSchedule.copyWith(
            appointments: [
              ...masterSchedule.appointments,
              ...savedAppointments,
            ],
          ),
        ),
      );

      setAppointmentService(masterSchedule.services.first.id);
    } catch (e) {
      log(e.toString());
    } finally {
      emit(state.copyWith(loading: false));
    }
  }

  void createAppointment(
    Function(AppointmentModel) onAppointmentCreated,
  ) async {
    if (state.masterSchedule == null || state.createdAppointment == null) {
      return;
    }

    if (state.createdAppointment!.date == null) {
      emit(state.copyWith(dateError: Strings.pleaseSelectADate.tr));
      return;
    }

    if (state.createdAppointment!.start == null ||
        state.createdAppointment!.end == null) {
      emit(state.copyWith(timeError: Strings.pleaseSelectATime.tr));
      return;
    }

    if (state.createdAppointment!.clientName == null ||
        state.createdAppointment!.clientName!.isEmpty) {
      emit(state.copyWith(clientNameError: Strings.pleaseEnterAClientName.tr));
      return;
    }

    if (state.createdAppointment!.service == null ||
        state.createdAppointment!.service!.isEmpty) {
      emit(state.copyWith(serviceError: Strings.pleaseSelectAService.tr));
      return;
    }

    if (state.clientNameError != null ||
        state.serviceError != null ||
        state.dateError != null ||
        state.timeError != null) {
      return;
    }

    final appointment = AppointmentModel(
      id: UniqueKey().toString(),
      date: state.createdAppointment!.date!,
      start: state.createdAppointment!.start!,
      end: state.createdAppointment!.end!,
      service: state.createdAppointment!.service!,
      clientName: state.createdAppointment!.clientName!,
    );
    await HiveAppointments.addAppointment(appointment);
    clientNameController.clear();

    emit(
      state.copyWith(
        createdAppointment: CreateAppointment(
          date: state.createdAppointment!.date!,
          service: state.createdAppointment!.service!,
        ),
        masterSchedule: state.masterSchedule?.copyWith(
          appointments: [...?state.masterSchedule?.appointments, appointment],
        ),
      ),
    );

    generateSlots();
    onAppointmentCreated(appointment);
  }

  void setAppointmentDate(DateTime date) {
    emit(
      state.copyWith(
        dateError: null,
        createdAppointment: state.createdAppointment?.copyWith(date: date),
      ),
    );
    generateSlots();
  }

  void setAppointmentService(String service) {
    emit(
      state.copyWith(
        serviceError: null,
        createdAppointment: state.createdAppointment?.copyWith(
          service: service,
        ),
      ),
    );
    generateSlots();
  }

  void setAppointmentClientName(String clientName) {
    emit(
      state.copyWith(
        clientNameError: null,
        createdAppointment: state.createdAppointment?.copyWith(
          clientName: clientName,
        ),
      ),
    );
  }

  void generateSlots() {
    final schedule = state.masterSchedule;
    final serviceId = state.createdAppointment?.service;
    final date = state.createdAppointment?.date;

    if (schedule == null || serviceId == null || date == null) {
      emit(state.copyWith(masterSlots: []));
      return;
    }

    final service = schedule.services.firstWhere((s) => s.id == serviceId);
    final duration = service.durationMinutes;
    final workingStart = schedule.workingHours.start.toMinutes();
    final workingEnd = schedule.workingHours.end.toMinutes() - duration;

    final step = 15;

    final now = DateTime.now();
    final isToday =
        date.year == now.year && date.month == now.month && date.day == now.day;
    final currentMinutes = TimeOfDay.fromDateTime(now).toMinutes();

    final appointments = schedule.appointments
        .where(
          (a) =>
              a.date.year == date.year &&
              a.date.month == date.month &&
              a.date.day == date.day,
        )
        .toList();

    final slots = <SlotModel>[];

    bool overlaps(int start, int end, int aStart, int aEnd) {
      return start < aEnd && end > aStart;
    }

    for (int t = workingStart; t <= workingEnd; t += step) {
      final slotEnd = t + step;
      final slotStart = t;

      SlotState stateSlot = SlotState.available;
      String? reason;

      if (isToday && slotStart < currentMinutes) {
        stateSlot = SlotState.unavailable;
        reason = Strings.timeLeft.tr;
      }

      for (final a in appointments) {
        final realStart = a.start.toMinutes();
        final realEnd = a.end.toMinutes();

        if (overlaps(slotStart, slotEnd, realStart, realEnd)) {
          stateSlot = SlotState.unavailable;
          reason = a.clientName;
          break;
        }

        if (overlaps(slotStart, slotEnd, realStart - step, realStart) ||
            overlaps(slotStart, slotEnd, realEnd, realEnd + step)) {
          if (stateSlot != SlotState.unavailable) {
            stateSlot = SlotState.unavailable;
            reason = Strings.timeBuffer.tr;
          }
          continue;
        }

        if (overlaps(slotStart, slotEnd, realStart - duration, realStart)) {
          if (stateSlot != SlotState.unavailable) {
            stateSlot = SlotState.unavailable;
            reason = Strings.slotAreUnavailable.tr;
          }
        }
      }

      for (final b in schedule.workingHours.breaks) {
        final bStart = b.start.toMinutes();
        final bEnd = b.end.toMinutes();

        if (slotStart >= bStart && slotStart < bEnd) {
          stateSlot = SlotState.rest;
          reason = b.label ?? Strings.dinner.tr;
        }

        if (slotStart < bStart && slotEnd > bStart - duration) {
          stateSlot = SlotState.unavailable;
          reason = Strings.timeLimit.tr;
        }
      }

      slots.add(
        SlotModel(
          time: TimeOfDay(hour: slotStart ~/ 60, minute: slotStart % 60),
          slotState: stateSlot,
          busyReason: reason,
        ),
      );
    }

    emit(state.copyWith(masterSlots: slots));
  }

  void onSlotSelected(SlotModel slotModel) {
    final schedule = state.masterSchedule;
    final serviceId = state.createdAppointment?.service;
    final date = state.createdAppointment?.date;

    if (schedule == null || serviceId == null || date == null) return;

    final service = schedule.services.firstWhere((s) => s.id == serviceId);
    final duration = service.durationMinutes;

    if (slotModel.slotState != SlotState.available) {
      emit(
        state.copyWith(
          timeError: slotModel.busyReason ?? Strings.slotAreUnavailable,
        ),
      );
      return;
    }

    final slots = state.masterSlots;

    final startMinutes = slotModel.time.hour * 60 + slotModel.time.minute;
    final endMinutes = startMinutes + duration;

    final updatedSlots = slots.map((s) {
      final t = s.time.hour * 60 + s.time.minute;

      if (t == startMinutes) {
        return SlotModel(
          time: s.time,
          slotState: s.slotState,
          busyReason: s.busyReason,
          selected: true,
        );
      }

      if (t > startMinutes && t < endMinutes) {
        return SlotModel(
          time: s.time,
          slotState: s.slotState,
          busyReason: s.busyReason,
          highlighted: true,
        );
      }

      return SlotModel(
        time: s.time,
        slotState: s.slotState,
        busyReason: s.busyReason,
        selected: false,
        highlighted: false,
      );
    }).toList();

    emit(
      state.copyWith(
        masterSlots: updatedSlots,
        timeError: null,
        createdAppointment: state.createdAppointment?.copyWith(
          start: slotModel.time,
          end: TimeOfDay(hour: endMinutes ~/ 60, minute: endMinutes % 60),
        ),
      ),
    );
  }

  @override
  Future<void> close() {
    clientNameNode.dispose();
    clientNameController.dispose();
    return super.close();
  }
}
