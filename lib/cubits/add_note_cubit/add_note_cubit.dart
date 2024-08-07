import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
  Color color = Colors.blue;
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(KNotesBox);

      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      log("failure");
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
