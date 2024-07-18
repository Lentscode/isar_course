import "package:bloc/bloc.dart";
import "package:flutter/foundation.dart";

import "../../data/note.dart";
import "../../data/tag.dart";
import "../../logic/logic.dart";

part "create_note_state.dart";

// Definisce un cubit per la gestione della creazione di una nota.
class CreateNoteCubit extends Cubit<CreateNoteState> {
  CreateNoteCubit(this._noteRepo, this._tagRepo) : super(const CreateNoteState()) {
    _init();
  }

  // Repo per gestire le operazioni sulle note.
  final NoteRepo _noteRepo;
  
  // Repo per gestire le operazioni sui tag.
  final TagRepo _tagRepo;

  // Metodo privato per inizializzare il cubit.
  void _init() {
    // Ascolta i cambiamenti nei tag tramite lo stream changes del _tagRepo.
    _tagRepo.changes.listen((e) async {
      // Ottiene la lista aggiornata di tag dal _tagRepo.
      final tags = await _tagRepo.getCollection();

      // Aggiorna lo stato del cubit con i nuovi tag disponibili.
      emit(state.copyWith(availableTags: tags.toList()));
    });
  }

  // Metodo per aggiornare i tag associati alla nota in creazione.
  void updateTag(Tag tag) => emit(state.copyWith(tags: {...state.tags, tag}));

  // Metodo per creare una nuova nota.
  Future<void> createNote(String text, String title) async {
    debugPrint(state.tags.toString()); // Stampa i tag correnti per debug.

    // Crea un nuovo oggetto Note con i dati forniti e la data corrente.
    final note = Note(title: title, text: text, date: DateTime.now());

    // Aggiunge la nota al repository delle note.
    await _noteRepo.addItem(note);

    // Lista di future per aggiungere i tag alla nota.
    List<Future<void>> futures = [];

    // Itera sui tag associati allo stato corrente del cubit.
    for (var tag in state.tags) {
      // Aggiunge il tag alla nota nel repository delle note.
      final future = _noteRepo.addTag(note, tag);
      futures.add(future); // Aggiunge il future alla lista.
    }

    // Attende il completamento di tutte le operazioni asincrone per aggiungere i tag.
    await Future.wait(futures);

    // Emette uno stato aggiornato indicando che la nota è stata creata con successo.
    emit(state.copyWith(created: true));
  }
}
