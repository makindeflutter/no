import 'package:cubitStateManagement/screens/city.dart';
import 'package:cubitStateManagement/screens/home.dart';
import 'package:cubitStateManagement/screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_states.dart';

class NoteCubit extends Cubit<NoteStates> {
  NoteCubit() : super(IntialNoteState());

  static NoteCubit get(context) => BlocProvider.of(context);

  String name = 'hello';
  int number = 0;

  int currentIndex = 0;
  List<String> titles = ['Home Screen', 'City Screen', 'Setting Screen'];

  List<Widget> screens = [
    const HomeScreen(),
    const CityScreen(),
    const SettingsScreen(),
  ];

  void increaseNumber() {
    number++;
    emit(IncreasedNumberState());
  }

  void decreaseNumber() {
    if (number != 0) {
      number--;
    }
    emit(DecreasedNumberState());
  }

  void changeBottomNavItems(int? index) {
    currentIndex = index!;
    emit(BottomNavState());
  }
}
