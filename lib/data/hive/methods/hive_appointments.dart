import 'package:appointments/data/hive/hive_const.dart';
import 'package:appointments/data/model/appointment_model.dart';

import 'package:hive_ce/hive.dart';

abstract class HiveAppointments {
  static Future<Box<AppointmentModel>> _box() async {
    return await Hive.openBox<AppointmentModel>(HiveConst.appointmentBox);
  }

  static Future<void> addAppointment(AppointmentModel appointment) async {
    final box = await _box();
    await box.put(appointment.id, appointment);
  }

  static Future<List<AppointmentModel>> getAppointments() async {
    final box = await _box();
    return box.values.toList();
  }

  static Future<void> deleteAppointment(String id) async {
    final box = await _box();
    await box.delete(id);
  }
}
