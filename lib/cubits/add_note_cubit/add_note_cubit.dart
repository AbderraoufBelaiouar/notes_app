import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(const AddNoteState(isLoading: true));
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(KNotesBox);

      emit(AddNoteSuccess());
      await notesBox.add(note);
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
  // Future<void> loadInitialData() async {
  //   final stableState = state;
  //   try {
  //     emit(state.copyWith(isLoading: true));

  //     emit(state.copyWith(isLoading: false));
  //   } catch (error) {
  //     emit(state.copyWith(error: error.toString()));
  //     emit(stableState.copyWith(isLoading: false));
  //   }
  // }
}
