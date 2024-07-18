part of "logic.dart";

// Definisce un'astrazione di repository per un tipo generico T, che deve essere l'oggetto di una collezione.
abstract class Repo<T extends Object> {
  // Costruttore costante che accetta un'istanza di Isar e una collezione di tipo T.
  const Repo(this.isar, this.collection);

  // Istanza di Isar per interagire con il database.
  final Isar isar;
  
  // Collezione specifica di tipo T all'interno del database Isar.
  final IsarCollection<T> collection;

  // Stream che emette eventi ogni volta che la collezione viene modificata.
  Stream<void> get changes => collection.watchLazy(fireImmediately: true);

  // Stream che osserva le modifiche a un singolo oggetto nella collezione, identificato dal suo id.
  Stream<T?> watchItem(Id id) => collection.watchObject(id);

  // Esegue una transazione di scrittura nel database Isar. Garantisce che tutte le operazioni nel blocco vengano eseguite insieme.
  Future<E> transaction<E>(Future<E> Function() action) => isar.writeTxn(action);

  // Recupera tutti gli oggetti della collezione.
  Future<List<T>> getCollection() => collection.where().findAll();

  // Aggiunge un nuovo oggetto alla collezione. Esegue l'operazione all'interno di una transazione.
  Future<Id> addItem(T item) => transaction(() => collection.put(item));

  // Elimina un oggetto dalla collezione, identificato dal suo id. Esegue l'operazione all'interno di una transazione.
  Future<bool> deleteItem(Id id) => transaction(() => collection.delete(id));

  // Recupera un oggetto dalla collezione tramite il suo id.
  Future<T?> getItemById(Id id) => collection.get(id);
}
