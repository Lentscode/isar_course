import "package:isar/isar.dart";

part "tag.g.dart";

@collection
class Tag {
  Tag(this.name);

  Id id = Isar.autoIncrement;

  String name;
}
