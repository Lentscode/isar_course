part of "../presentation.dart";

// Definisce un widget Stateless per la pagina dei tag.
class TagsPage extends StatelessWidget {
  const TagsPage({super.key});

  // Costruisce l'interfaccia utente della pagina.
  @override
  Widget build(BuildContext context) => BlocProvider(
        // Fornisce il TagsCubit al di sotto di questo punto nell'albero di widget.
        create: (context) => TagsCubit(getIt.get<TagRepo>()),
        child: Scaffold(
          appBar: AppBar(), // Barra dell'applicazione senza titolo.
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Expanded(
                    child: BlocBuilder<TagsCubit, List<Tag>>(
                      // BlocBuilder che ricostruisce il widget quando cambia lo stato di TagsCubit.
                      builder: (context, tags) => ListView.builder(
                        itemCount: tags.length, // Numero di elementi nella lista dei tag.
                        itemBuilder: (context, index) => TagTile(tag: tags[index]), // Costruisce ogni elemento della lista usando TagTile.
                      ),
                    ),
                  ),
                  const AddTag(), // Widget per aggiungere un nuovo tag.
                ],
              ),
            ),
          ),
        ),
      );
}

