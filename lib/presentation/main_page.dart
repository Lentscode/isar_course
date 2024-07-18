part of "presentation.dart";

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => NotesCubit(getIt.get<NoteRepo>()),
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Notes",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: BlocBuilder<NotesCubit, List<Note>>(
                      builder: (context, notes) => ListView.builder(
                        padding: const EdgeInsets.only(bottom: 64),
                        itemCount: notes.length,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(bottom: index == notes.length - 1 ? 0 : 16),
                          child: NoteCard(note: notes[index]),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NewNotePage(),
              ),
            ),
            child: const Icon(Icons.add),
          ),
        ),
      );
}
