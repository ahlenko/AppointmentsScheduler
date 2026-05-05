import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/data/model/appointment_model.dart';
import 'package:appointments/data/model/break_time.dart';
import 'package:appointments/data/model/create_appointment.dart';
import 'package:appointments/data/model/master_schedule.dart';
import 'package:appointments/data/model/service_model.dart';
import 'package:appointments/data/model/slot_model.dart';
import 'package:appointments/data/model/working_hours.dart';
import 'package:appointments/ui/pages/create_appointment/create_appointment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:get/get_utils/src/extensions/internacionalization.dart';

void main() {
  late CreateAppointmentCubit cubit;

  setUp(() {
    cubit = CreateAppointmentCubit();
  });

  MasterSchedule buildSchedule({
    required List<AppointmentModel> appointments,
    List<BreakTime> breaks = const [],
  }) {
    return MasterSchedule(
      workingHours: WorkingHours(
        start: const TimeOfDay(hour: 10, minute: 0),
        end: const TimeOfDay(hour: 14, minute: 0),
        breaks: breaks,
      ),
      bufferMinutes: 15,
      services: [
        const ServiceModel(id: '1', name: 'Test', durationMinutes: 60),
      ],
      appointments: appointments,
    );
  }

  test('generateSlots creates 15-min grid', () {
    final schedule = buildSchedule(appointments: []);

    cubit.emit(
      cubit.state.copyWith(
        masterSchedule: schedule,
        createdAppointment: CreateAppointment(
          service: '1',
          date: DateTime(2025, 1, 1),
        ),
      ),
    );

    cubit.generateSlots();

    final slots = cubit.state.masterSlots;

    expect(slots.isNotEmpty, true);
    expect(slots.first.time.minute, 0);
    expect(slots[1].time.minute, 15);
  });

  test('slot inside appointment shows client name', () {
    final appointment = AppointmentModel(
      id: '1',
      date: DateTime(2025, 1, 1),
      start: const TimeOfDay(hour: 11, minute: 0),
      end: const TimeOfDay(hour: 12, minute: 0),
      clientName: 'John',
      service: '1',
    );

    final schedule = buildSchedule(appointments: [appointment]);

    cubit.emit(
      cubit.state.copyWith(
        masterSchedule: schedule,
        createdAppointment: CreateAppointment(
          service: '1',
          date: DateTime(2025, 1, 1),
        ),
      ),
    );

    cubit.generateSlots();

    final slot = cubit.state.masterSlots.firstWhere((s) => s.time.hour == 11);

    expect(slot.slotState, SlotState.unavailable);
    expect(slot.busyReason, 'John');
  });

  test('buffer before appointment shows insufficient time', () {
    final appointment = AppointmentModel(
      id: '1',
      date: DateTime(2025, 1, 1),
      start: const TimeOfDay(hour: 12, minute: 0),
      end: const TimeOfDay(hour: 13, minute: 0),
      clientName: 'John',
      service: '1',
    );

    final schedule = buildSchedule(appointments: [appointment]);

    cubit.emit(
      cubit.state.copyWith(
        masterSchedule: schedule,
        createdAppointment: CreateAppointment(
          service: '1',
          date: DateTime(2025, 1, 1),
        ),
      ),
    );

    cubit.generateSlots();

    final slot = cubit.state.masterSlots.firstWhere(
      (s) => s.time.hour == 11 && s.time.minute == 45,
    );

    expect(slot.busyReason, Strings.timeBuffer.tr);
  });

  test('slot exactly at appointment end is available', () {
    final appointment = AppointmentModel(
      id: '1',
      date: DateTime(2025, 1, 1),
      start: const TimeOfDay(hour: 11, minute: 0),
      end: const TimeOfDay(hour: 12, minute: 0),
      clientName: 'John',
      service: '1',
    );

    final schedule = buildSchedule(appointments: [appointment]);

    cubit.emit(
      cubit.state.copyWith(
        masterSchedule: schedule,
        createdAppointment: CreateAppointment(
          service: '1',
          date: DateTime(2025, 1, 1),
        ),
      ),
    );

    cubit.generateSlots();

    final slot = cubit.state.masterSlots.firstWhere(
      (s) => s.time.hour == 12 && s.time.minute == 0,
    );

    expect(slot.slotState, SlotState.unavailable);
  });

  test('slot crossing break shows time limit', () {
    final schedule = buildSchedule(
      appointments: [],
      breaks: [
        const BreakTime(
          start: TimeOfDay(hour: 12, minute: 0),
          end: TimeOfDay(hour: 13, minute: 0),
        ),
      ],
    );

    cubit.emit(
      cubit.state.copyWith(
        masterSchedule: schedule,
        createdAppointment: CreateAppointment(
          service: '1', // 60 хв
          date: DateTime(2025, 1, 1),
        ),
      ),
    );

    cubit.generateSlots();

    final slot = cubit.state.masterSlots.firstWhere(
      (s) => s.time.hour == 11 && s.time.minute == 30,
    );

    expect(slot.busyReason, Strings.timeLimit.tr);
  });
}
