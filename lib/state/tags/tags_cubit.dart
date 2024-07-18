import "../../data/tag.dart";
import "../collection/collection_cubit.dart";

// Implementazione del [CollectionCubit] per i tags.
class TagsCubit extends CollectionCubit<Tag> {
  TagsCubit(super.repo);

  // Metodo per aggiungere un [Tag] alla collezione.
  void addTag(String name) {
    final tag = Tag(name);

    repo.addItem(tag);
  }
}
