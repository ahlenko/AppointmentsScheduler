import 'package:appointments/app/app.dart';
import 'package:appointments/app/di/di.dart';
import 'package:appointments/data/hive/hive_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

void main() async {
  initDi();
  await Hive.initFlutter();
  HiveConst.registerAdapters();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(AppointmentsApp());
}
