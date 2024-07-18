import "package:bloc/bloc.dart";

import "../../logic/logic.dart";

// Definisce un cubit astratto per gestire una collezione Isar di oggetti.
abstract class CollectionCubit<T extends Object> extends Cubit<List<T>> {
  CollectionCubit(this.repo) : super([]) {
    _init();
  }

  // Repo che fornisce i metodi per accedere e manipolare la collezione di oggetti.
  final Repo<T> repo;

  // Metodo privato per inizializzare il cubit.
  void _init() {
    // Ascolta i cambiamenti nella collezione tramite lo stream changes del repo.
    repo.changes.listen((e) async {
      // Ottiene la collezione aggiornata dal repo.
      final items = await repo.getCollection();

      // Emette con la nuova lista di oggetti.
      emit(items);
    });
  }
}

