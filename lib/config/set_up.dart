import "package:get_it/get_it.dart";
import "package:isar/isar.dart";
import "package:path_provider/path_provider.dart";

import "../data/note.dart";
import "../data/tag.dart";

// Creazione di un'istanza singleton di GetIt, un service locator per gestire le dipendenze.
final getIt = GetIt.instance;

// Funzione asincrona per configurare il service locator e inizializzare il database Isar.
Future<void> setUp() async {
  // Ottiene la directory dei documenti dell'applicazione.
  final dir = await getApplicationDocumentsDirectory();

  // Apre un'istanza del database Isar con gli schemi di Note e Tag, utilizzando la directory ottenuta.
  final isar = await Isar.open(
    [NoteSchema, TagSchema], // Gli schemi delle collezioni Note e Tag.
    directory: dir.path, // Il percorso della directory in cui salvare il database.
  );
}
