part of "../presentation.dart";

class TagTile extends StatelessWidget {
  const TagTile({super.key, required this.tag});

  final Tag tag;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: Text(tag.name),
      );
}
