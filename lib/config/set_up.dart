import "package:get_it/get_it.dart";
import "package:isar/isar.dart";
import "package:path_provider/path_provider.dart";

import "../data/note.dart";
import "../data/tag.dart";
import "../logic/logic.dart";

final getIt = GetIt.instance;

Future<void> setUp() async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [NoteSchema, TagSchema],
    directory: dir.path,
  );

  final noteRepo = NoteRepo(isar, isar.notes);
  final tagRepo = TagRepo(isar, isar.tags);

  getIt.registerSingleton<NoteRepo>(noteRepo);
  getIt.registerSingleton<TagRepo>(tagRepo);
}
