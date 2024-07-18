part of "logic.dart";

abstract class Repo<T extends Object> {
  const Repo(this.isar, this.collection);

  final Isar isar;

  final IsarCollection<T> collection;

  Stream<void> get changes => collection.watchLazy(fireImmediately: true);

  Stream<T?> watchItem(Id id) => collection.watchObject(id);

  Future<E> transaction<E>(Future<E> Function() action) => isar.writeTxn(action);

  Future<List<T>> getCollection() => collection.where().findAll();

  Future<Id> addItem(T item) => transaction(() => collection.put(item));

  Future<bool> deleteItem(Id id) => transaction(() => collection.delete(id));

  Future<T?> getItemById(Id id) => collection.get(id);
}
