import "package:bloc/bloc.dart";

import "../../logic/logic.dart";

abstract class CollectionCubit<T extends Object> extends Cubit<List<T>> {
  CollectionCubit(this.repo) : super([]) {
    _init();
  }

  final Repo<T> repo;

  void _init() {
    repo.changes.listen((e) async {
      final items = await repo.getCollection();

      emit(items);
    });
  }
}
