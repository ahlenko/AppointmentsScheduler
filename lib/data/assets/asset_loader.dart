import 'dart:convert';

import 'package:appointments/data/model/master_schedule.dart';
import 'package:flutter/services.dart';

abstract class AssetLoader {
  static Future<MasterSchedule> loadMasterSchedule() async {
    final String path = 'assets/schedule.json';

    final jsonString = await rootBundle.loadString(path);
    final data = json.decode(jsonString);
    return MasterSchedule.fromJson(data);
  }
}
