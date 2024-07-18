part of "../presentation.dart";

// Definisce un widget Stateless per visualizzare un singolo tag come una tile.
class TagTile extends StatelessWidget {
  const TagTile({super.key, required this.tag});

  // Istanza di Tag che rappresenta il tag da visualizzare.
  final Tag tag;

  // Costruisce l'interfaccia utente della tile.
  @override
  Widget build(BuildContext context) => Padding(
        // Aggiunge padding intorno alla tile.
        padding: const EdgeInsets.all(8),
        // Visualizza il nome del tag.
        child: Text(tag.name),
      );
}

