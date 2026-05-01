import 'package:appointments/app/translations/messages/messages_en.dart';
import 'package:appointments/app/translations/messages/messages_ua.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Messages extends Translations {
  MessagesEn messagesEn = MessagesEn();
  MessagesUa messagesUa = MessagesUa();

  @override
  Map<String, Map<String, String>> get keys {
    Map<String, Map<String, String>> combinedKeys = {
      ...messagesEn.keys,
      ...messagesUa.keys,
    };
    return combinedKeys;
  }
}
