import 'package:appointments/data/model/appointment_model.dart';
import 'package:hive_ce/hive.dart';

abstract class HiveConst {
  static const String appointmentBox = 'appointment_box';
  static void registerAdapters() {
    !Hive.isAdapterRegistered(1)
        ? Hive.registerAdapter(AppointmentModelAdapter())
        : null;
  }
}
