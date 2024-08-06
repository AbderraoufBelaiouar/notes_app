part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  List<NoteModel> notes;
  NotesSuccess(this.notes);
}

class NotesFailure extends NotesState {
  final String? errMessage;
  NotesFailure(this.errMessage);
}
