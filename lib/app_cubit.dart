import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/app_states.dart';

class NoteCubit extends Cubit<NoteStates> {
  NoteCubit() : super(IntialNoteState());

  String name = 'hello';
}
