part of "../presentation.dart";

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[400]!),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(note.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
            const SizedBox(height: 4),
            Text(note.text, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 12),
            Wrap(
              children: [
                const Text("Tags: "),
                const SizedBox(width: 8),
                for (var tag in note.tags) ...[
                  Text(tag.name),
                  const SizedBox(width: 8),
                ],
              ],
            )
          ],
        ),
      );
}
