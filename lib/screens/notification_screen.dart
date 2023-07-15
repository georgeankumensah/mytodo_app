import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytodo_app/project_cubit.dart';
import 'package:mytodo_app/project_states.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<ProjectCubit,ProjectStates>(
      listener: (BuildContext  context,state){},
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Notification'),
            centerTitle: true,
          ),
          );}
        );
  }
}
