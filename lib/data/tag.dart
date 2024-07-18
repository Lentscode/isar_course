import "package:isar/isar.dart";

part "tag.g.dart";

// Annota questa classe come una collezione Isar.
@collection
class Tag {
  // Costruttore della classe Tag, richiede il nome.
  Tag(this.name);

  // Campo ID, viene auto-incrementato da Isar.
  Id id = Isar.autoIncrement;

  // Campo per il nome del tag.
  String name;
}

