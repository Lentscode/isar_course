import "package:isar/isar.dart";

import "tag.dart";

part "note.g.dart";

@collection
class Note {
  Note({
    required this.title,
    required this.text,
    required this.date,
  });

  Id id = Isar.autoIncrement;

  String title;

  String text;

  DateTime date;

  final IsarLinks<Tag> tags = IsarLinks<Tag>();
}
