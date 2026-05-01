import 'package:appointments/app/di/di.dart';
import 'package:appointments/app/extensions/context_extension.dart';
import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/data/model/service_model.dart';
import 'package:appointments/ui/components/client_name_field_widget.dart';
import 'package:appointments/ui/components/date_picker_widget.dart';
import 'package:appointments/ui/components/service_picker_widget.dart';
import 'package:appointments/ui/components/slots_grid_widget.dart';
import 'package:appointments/ui/pages/create_appointment/create_appointment_cubit.dart';
import 'package:appointments/ui/theme/fonts/types.dart';
import 'package:appointments/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class CreateAppointmentPage extends StatefulWidget {
  const CreateAppointmentPage({super.key});

  @override
  State<CreateAppointmentPage> createState() => _CreateAppointmentPageState();
}

class _CreateAppointmentPageState extends State<CreateAppointmentPage> {
  final _cubit = getIt.get<CreateAppointmentCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAppointmentCubit, CreateAppointmentState>(
      bloc: _cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => {},
              icon: Icon(Icons.arrow_back_ios),
            ),
            title: Text(Strings.newAppointment.tr),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        spacerVertical(16),
                        ClientNameFieldWidget(
                          errorText: state.clientNameError,
                          clientNameController: _cubit.clientNameController,
                        ),
                        spacerVertical(16),
                        ServicePickerWidget(
                          selectedService: state.masterSchedule?.services
                              .where(
                                (s) =>
                                    s.id == state.createdAppointment?.service,
                              )
                              .firstOrNull,
                          services: state.masterSchedule?.services ?? [],
                          onServiceSelected: (service) {
                            _cubit.setAppointmentService(service.id);
                          },
                          errorText: state.serviceError,
                        ),
                        spacerVertical(16),
                        DatePickerWidget(errorText: state.dateError),
                        spacerVertical(16),
                        SlotsGridWidget(errorText: state.timeError),
                      ],
                    ),
                  ),
                ),
                FilledButton(
                  onPressed: _cubit.createAppointment,
                  child: Text(Strings.confirmAppointment.tr),
                ),
                SizedBox(height: context.bottomSafe == 0 ? 12.h : 0.h),
              ],
            ),
          ),
        );
      },
    );
  }
}
