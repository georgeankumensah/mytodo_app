import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytodo_app/project_cubit.dart';
import 'package:mytodo_app/project_states.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProjectCubit(),
      child: BlocConsumer<ProjectCubit, ProjectStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ProjectCubit.get(context);
          return (Scaffold(
            appBar: AppBar(title: const Text("My Todo App")),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(cubit.name.toString()),
                  ]),
            ),
            bottomNavigationBar: BottomNavigationBar(items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.location_city), label: 'Location'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ]),
          ));
        },
      ),
    );
  }
}
