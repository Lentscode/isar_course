part of "logic.dart";

class NoteRepo extends Repo<Note> {
  const NoteRepo(super.isar, super.collection);

  Future<void> addTag(Note note, Tag tag) async {
    transaction(() async {
      note.tags.add(tag);

      note.tags.save();
    });
  }
}
