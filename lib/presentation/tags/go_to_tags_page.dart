part of "../presentation.dart";

class GoToTagsPage extends StatelessWidget {
  const GoToTagsPage({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const TagsPage(),
          ),
        ),
        icon: const Icon(Icons.tag),
      );
}
