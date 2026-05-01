import 'package:appointments/app/translations/tr_strings.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class MessagesEn extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_EN': {
      Strings.pleaseSelectAService: '''Please select a service''',
      Strings.pleaseEnterAClientName: '''Please enter a client name''',
      Strings.pleaseSelectATime: '''Please select a time''',
      Strings.pleaseSelectADate: '''Please select a date''',
      Strings.newAppointment: '''New appointment''',
      Strings.clientName: '''1. Client name''',
      Strings.selectAService: '''Select a service''',
          Strings.selectATime: '''Select a time''',
          Strings.selectADay: '''Select a day''',
          Strings.confirmAppointment: '''Confirm appointment''',
        },
  };
}
