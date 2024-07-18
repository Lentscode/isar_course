part of "presentation.dart";

// Definisce un widget Stateless per la pagina principale delle note.
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  // Costruisce l'interfaccia utente della pagina.
  @override
  Widget build(BuildContext context) => BlocProvider(
        // Fornisce il NotesCubit al di sotto di questo punto nell'albero di widget.
        create: (context) => NotesCubit(getIt.get<NoteRepo>()),
        child: Scaffold(
          // Corpo della pagina all'interno di un'area sicura.
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Titolo della pagina delle note.
                  const Text(
                    "Notes",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 24), // Spazio tra il titolo e la lista delle note.
                  Expanded(
                    child: BlocBuilder<NotesCubit, List<Note>>(
                      // BlocBuilder che ricostruisce il widget quando cambia lo stato di NotesCubit.
                      builder: (context, notes) => ListView.builder(
                        padding: const EdgeInsets.only(
                            bottom: 64), // Padding inferiore per lasciare spazio al floatingActionButton.
                        itemCount: notes.length, // Numero di note nella lista.
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(
                              bottom: index == notes.length - 1 ? 0 : 16), // Spazio inferiore tra le schede delle note.
                          child:
                              NoteCard(note: notes[index]), // Costruisce una scheda di nota per ogni nota nella lista.
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // Pulsante di azione galleggiante per aggiungere una nuova nota.
          floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NewNotePage(), // Naviga alla pagina per aggiungere una nuova nota.
              ),
            ),
            child: const Icon(Icons.add), // Icona del pulsante per aggiungere una nuova nota.
          ),
        ),
      );
}
