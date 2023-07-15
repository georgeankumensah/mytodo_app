import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytodo_app/controller/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

class TodoCubit extends Cubit<todoStates> {
  TodoCubit() : super(InitialTodoState());

  static TodoCubit get(context) => BlocProvider.of(context);

  // sql lite logic
  // create databbase file
//  create database table
//open database file
Database? database;
  void createDatabase() async {
    openDatabase("todo.db",version:1,onCreate:(db, version) {
      // sql statement below
      database?.execute('CREATE DATABASE task'
      '(id INTEGER PRIMARY KEY,title TEXT,date TEXT,time TEXT)').then((value){
        // table is created
        print("tabble is created");

      }).catchError((error){
        // there is an error creating the table
        print('error when creating database ${error.toString()}');
      });
      
    },onOpen: );
    print('database created');
  }
}
