part of "create_note_cubit.dart";

// Classe immutabile che rappresenta lo stato per la creazione di una nota.
@immutable
class CreateNoteState {
  final bool created; // Indica se la nota è stata creata con successo.
  final Set<Tag> tags; // Insieme di tag associati alla nota in creazione.
  final List<Tag> availableTags; // Lista di tutti i tag disponibili nell'applicazione.

  // Costruttore della classe, con valori di default per i parametri opzionali.
  const CreateNoteState({
    this.created = false,
    this.tags = const {}, // Set vuoto di default per i tag.
    this.availableTags = const [], // Lista vuota di default per i tag disponibili.
  });

  // Metodo per creare una copia immutabile dello stato con eventuali modifiche.
  CreateNoteState copyWith({
    bool? created,
    Set<Tag>? tags,
    List<Tag>? availableTags,
  }) =>
      CreateNoteState(
        created: created ??
            this.created, // Aggiorna il valore di 'created' se fornito, altrimenti mantiene il valore corrente.
        tags: tags ?? this.tags, // Aggiorna l'insieme di 'tags' se fornito, altrimenti mantiene il valore corrente.
        availableTags: availableTags ??
            this.availableTags, // Aggiorna la lista di 'availableTags' se fornita, altrimenti mantiene il valore corrente.
      );
}
