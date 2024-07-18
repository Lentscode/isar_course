part of "../presentation.dart";

// Definisce un widget Stateless per la pagina di creazione di una nuova nota.
class NewNotePage extends StatelessWidget {
  const NewNotePage({super.key});

  // Costruisce l'interfaccia utente della pagina.
  @override
  Widget build(BuildContext context) => Scaffold(
        // Barra dell'applicazione con un'azione che porta alla pagina dei tag.
        appBar: AppBar(
          actions: const [GoToTagsPage()],
        ),
        // Corpo della pagina con padding orizzontale e supporto per lo scrolling.
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Titolo della pagina.
                Text(
                  "New note",
                  style: TextStyle(fontSize: 48),
                ),
                SizedBox(height: 24),
                // Form per la creazione di una nuova nota.
                NewNoteForm(),
              ],
            ),
          ),
        ),
      );
}
