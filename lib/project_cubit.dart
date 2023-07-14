import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytodo_app/project_states.dart';

class ProjectCubit extends Cubit<ProjectStates> {
  ProjectCubit() : super(InitialProjectState());

  static ProjectCubit get(context) => BlocProvider.of(context);

  String name = 'Hello george here';

  // write all your business logic here
  int number = 0;
  void increaseNumber() {
    number++;
    emit(IncreaseNumberState());
    
  }

  void decreaseNumber() {
    if (number != 0){
    number--;
    }
    emit(DecreaseNumberState());
    
  }
}
