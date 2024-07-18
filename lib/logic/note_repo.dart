part of "logic.dart";

// Implementazione della Repo per la collezione delle note.
class NoteRepo extends Repo<Note> {
  const NoteRepo(super.isar, super.collection);

  // Metodo per aggiungere un tag a una nota.
  Future<void> addTag(Note note, Tag tag) async {
    transaction(() async {
      note.tags.add(tag);

      note.tags.save();
    });
  }
}
