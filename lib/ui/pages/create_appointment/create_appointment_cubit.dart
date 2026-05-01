import 'dart:developer';

import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/data/assets/asset_loader.dart';
import 'package:appointments/data/hive/methods/hive_appointments.dart';
import 'package:appointments/data/model/appointment_model.dart';
import 'package:appointments/data/model/master_schedule.dart';
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
  CreateAppointmentCubit() : super(CreateAppointmentState()) {
    emit(
      state.copyWith(
        createdAppointment: AppointmentModel(id: UniqueKey().toString()),
      ),
    );

    loadMasterSchedule();
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
    } catch (e) {
      log(e.toString());
    } finally {
      emit(state.copyWith(loading: false));
    }
  }

  void createAppointment() async {
    if (state.masterSchedule == null || state.createdAppointment == null) {
      return;
    }

    if (state.createdAppointment!.date == null) {
      emit(state.copyWith(dateError: Strings.pleaseSelectADate.tr));
      return;
    }

    if (state.createdAppointment!.start == null) {
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

    await HiveAppointments.addAppointment(state.createdAppointment!);
    clientNameController.clear();

    emit(
      state.copyWith(
        createdAppointment: AppointmentModel(id: UniqueKey().toString()),
        masterSchedule: state.masterSchedule?.copyWith(
          appointments: [
            ...?state.masterSchedule?.appointments,
            state.createdAppointment!,
          ],
        ),
      ),
    );
  }

  void setAppointmentDate(DateTime date) {
    emit(
      state.copyWith(
        createdAppointment: state.createdAppointment?.copyWith(date: date),
      ),
    );
  }

  void setAppointmentStart(TimeOfDay start) {
    emit(
      state.copyWith(
        createdAppointment: state.createdAppointment?.copyWith(start: start),
      ),
    );
  }

  void setAppointmentService(String service) {
    emit(
      state.copyWith(
        createdAppointment: state.createdAppointment?.copyWith(
          service: service,
        ),
      ),
    );
  }

  void setAppointmentClientName(String clientName) {
    emit(
      state.copyWith(
        createdAppointment: state.createdAppointment?.copyWith(
          clientName: clientName,
        ),
      ),
    );
  }
}
