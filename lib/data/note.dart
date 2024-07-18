import "package:isar/isar.dart";

import "tag.dart";

part "note.g.dart";

// Annota questa classe come una collezione Isar.
@collection
class Note {
  // Costruttore della classe Note, richiede il titolo, il testo e la data.
  Note({
    required this.title,
    required this.text,
    required this.date,
  });

  // Campo ID, viene auto-incrementato da Isar.
  Id id = Isar.autoIncrement;

  // Campo per il titolo della nota.
  String title;

  // Campo per il testo della nota.
  String text;

  // Campo per la data della nota.
  DateTime date;

  // Collegamenti a oggetti Tag associati a questa nota.
  final IsarLinks<Tag> tags = IsarLinks<Tag>();
}
