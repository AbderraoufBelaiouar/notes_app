class AddNoteState {
  final bool isLoading;
  final String? error;

  const AddNoteState({
    this.isLoading = false,
    this.error,
  });

  AddNoteState copyWith({
    bool? isLoading,
    String? error,
  }) {
    return AddNoteState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class AddNoteInitialState extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String? errMessage;
  AddNoteFailure(this.errMessage);
}
