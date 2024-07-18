import "package:bloc/bloc.dart";
import "package:flutter/foundation.dart";

import "../../data/note.dart";
import "../../data/tag.dart";
import "../../logic/logic.dart";

part "create_note_state.dart";

class CreateNoteCubit extends Cubit<CreateNoteState> {
  CreateNoteCubit(this._noteRepo, this._tagRepo) : super(const CreateNoteState()) {
    _init();
  }

  final NoteRepo _noteRepo;
  final TagRepo _tagRepo;

  void _init() {
    _tagRepo.changes.listen((e) async {
      final tags = await _tagRepo.getCollection();

      emit(state.copyWith(availableTags: tags.toList()));
    });
  }

  void updateTag(Tag tag) => emit(state.copyWith(tags: {...state.tags, tag}));

  Future<void> createNote(String text, String title) async {
    debugPrint(state.tags.toString());
    final note = Note(title: title, text: text, date: DateTime.now());

    await _noteRepo.addItem(note);

    List<Future<void>> futures = [];

    for (var tag in state.tags) {
      final future = _noteRepo.addTag(note, tag);
      futures.add(future);
    }

    await Future.wait(futures);

    emit(state.copyWith(created: true));
  }
}
