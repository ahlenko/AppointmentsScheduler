import 'package:appointments/app/navigation/router.dart';
import 'package:appointments/app/navigation/routes.dart';
import 'package:appointments/app/translations/messages.dart';
import 'package:appointments/app/translations/tr_settings.dart';
import 'package:appointments/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppointmentsApp extends StatefulWidget {
  const AppointmentsApp({super.key});

  @override
  State<AppointmentsApp> createState() => _AppointmentsAppState();
}

class _AppointmentsAppState extends State<AppointmentsApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(402, 874),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(boldText: false, textScaler: TextScaler.linear(1)),
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,

            navigatorKey: RoutesGenerator.mainNavigatorKey,
            onGenerateRoute: RoutesGenerator.onGenerateRoute,
            initialRoute: Routes.createAppointment,
            navigatorObservers: [customRouterObserver],

            locale: Get.deviceLocale,
            translations: Messages(),
            fallbackLocale: TrSettings.fallbackLocale,
            supportedLocales: TrSettings.supportedLocales,
            localizationsDelegates: TrSettings.localizationsDelegates,

            theme: createTheme(),
          ),
        );
      },
    );
  }
}
