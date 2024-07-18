part of "../presentation.dart";

// Definisce un widget Stateless per navigare alla pagina dei tag.
class GoToTagsPage extends StatelessWidget {
  const GoToTagsPage({super.key});

  // Costruisce l'interfaccia utente del widget.
  @override
  Widget build(BuildContext context) => IconButton(
        // Definisce l'azione quando il pulsante viene premuto.
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            // Costruisce la pagina dei tag quando viene premuto il pulsante.
            builder: (context) => const TagsPage(),
          ),
        ),
        // Icona del pulsante, in questo caso un'icona di tag.
        icon: const Icon(Icons.tag),
      );
}
