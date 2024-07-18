part of "../presentation.dart";

// Definisce un widget Stateless per visualizzare una scheda di una nota.
class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note});

  // Istanza di Note che rappresenta la nota da visualizzare.
  final Note note;

  // Costruisce l'interfaccia utente della scheda.
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          // Bordo grigio intorno alla scheda.
          border: Border.all(color: Colors.grey[400]!),
          // Angoli arrotondati per la scheda.
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16), // Padding interno della scheda.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Allinea il contenuto a sinistra.
          children: [
            // Testo del titolo della nota, con dimensione e peso del font specificati.
            Text(note.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
            const SizedBox(height: 4), // Spazio tra il titolo e il testo della nota.
            // Testo del contenuto della nota, con colore grigio.
            Text(note.text, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 12), // Spazio tra il testo della nota e i tag.
            Wrap(
              // Wrappa i widget dei tag in una riga, andando a capo se necessario.
              children: [
                const Text("Tags: "), // Testo fisso per indicare i tag.
                const SizedBox(width: 8), // Spazio tra il testo "Tags: " e i tag effettivi.
                // Itera sui tag associati alla nota e li visualizza.
                for (var tag in note.tags) ...[
                  Text(tag.name), // Nome del tag.
                  const SizedBox(width: 8), // Spazio tra i tag.
                ],
              ],
            )
          ],
        ),
      );
}
