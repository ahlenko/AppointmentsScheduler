import 'package:appointments/data/model/appointment_model.dart';
import 'package:appointments/data/model/service_model.dart';
import 'package:appointments/data/model/working_hours.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_schedule.freezed.dart';
part 'master_schedule.g.dart';

@freezed
abstract class MasterSchedule with _$MasterSchedule {
  const factory MasterSchedule({
    required WorkingHours workingHours,
    required int bufferMinutes,
    required List<ServiceModel> services,
    required List<AppointmentModel> appointments,
  }) = _MasterSchedule;

  factory MasterSchedule.fromJson(Map<String, dynamic> json) =>
      _$MasterScheduleFromJson(json);
}
