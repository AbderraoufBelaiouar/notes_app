class AddNoteState {}

class AddNoteInitialState extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String? errMessage;
  AddNoteFailure(this.errMessage);
}
