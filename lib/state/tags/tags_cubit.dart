import "../../data/tag.dart";
import "../collection/collection_cubit.dart";

class TagsCubit extends CollectionCubit<Tag> {
  TagsCubit(super.repo);

  void addTag(String name) {
    final tag = Tag(name);

    repo.addItem(tag);
  }
}
