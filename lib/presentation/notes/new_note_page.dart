part of "../presentation.dart";

class NewNotePage extends StatelessWidget {
  const NewNotePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: const [GoToTagsPage()],
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New note",
                  style: TextStyle(fontSize: 48),
                ),
                SizedBox(height: 24),
                NewNoteForm(),
              ],
            ),
          ),
        ),
      );
}
