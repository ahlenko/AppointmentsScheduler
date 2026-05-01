import 'package:appointments/app/di/di.dart';
import 'package:appointments/ui/pages/create_appointment/create_appointment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        return Container();
      },
    );
  }
}
