import 'dart:developer';

import 'package:appointments/data/assets/asset_loader.dart';
import 'package:appointments/data/hive/methods/hive_appointments.dart';
import 'package:appointments/data/model/appointment_model.dart';
import 'package:appointments/data/model/master_schedule.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_appointment_state.dart';
part 'create_appointment_cubit.freezed.dart';

@lazySingleton
class CreateAppointmentCubit extends Cubit<CreateAppointmentState> {
  CreateAppointmentCubit() : super(CreateAppointmentState()) {
    loadMasterSchedule();
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

    await HiveAppointments.addAppointment(state.createdAppointment!);

    emit(
      state.copyWith(
        masterSchedule: state.masterSchedule?.copyWith(
          appointments: [
            ...?state.masterSchedule?.appointments,
            state.createdAppointment!,
          ],
        ),
      ),
    );
  }
}
