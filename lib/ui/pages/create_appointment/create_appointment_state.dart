part of 'create_appointment_cubit.dart';

@freezed
abstract class CreateAppointmentState with _$CreateAppointmentState {
  const factory CreateAppointmentState({
    @Default(false) bool loading,
    MasterSchedule? masterSchedule,
    AppointmentModel? createdAppointment,
  }) = _CreateAppointmentState;
}
