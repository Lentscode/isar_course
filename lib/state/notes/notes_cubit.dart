import "../../data/note.dart";
import "../collection/collection_cubit.dart";

// Implementazione del [CollectionCubit] per le note.
class NotesCubit extends CollectionCubit<Note> {
  NotesCubit(super.repo);
}
