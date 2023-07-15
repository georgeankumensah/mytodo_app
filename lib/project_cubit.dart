import "package:flutter/cupertino.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytodo_app/project_states.dart';

import "package:mytodo_app/screens/city_screen.dart";
import "package:mytodo_app/screens/home_screen.dart";
import "package:mytodo_app/screens/settings_screen.dart";

class ProjectCubit extends Cubit<ProjectStates> {
  ProjectCubit() : super(InitialProjectState());

  static ProjectCubit get(context) => BlocProvider.of(context);

  String name = 'Hello george here';

// index of bottom navigation bar
  int currentScreenIndex = 0;

  // write all your business logic here
  int number = 0;
// List of screen sppbar names
  List<String> title = [
    'Home',
    'City',
    'Settings',
  ];

  // list of screens
  List<Widget> screens = [
    const HomeScreen(),
    const CityScreen(),
    const SettingsScreen(),
  ];

  void changeBottomNavigationBarItem(int? index) {
    currentScreenIndex = index!;
    emit(BottomNavState());
    
  }

  void increaseNumber() {
    number++;
    emit(IncreaseNumberState());
  }

  void decreaseNumber() {
    if (number != 0) {
      number--;
    }
    emit(DecreaseNumberState());
  }
}
