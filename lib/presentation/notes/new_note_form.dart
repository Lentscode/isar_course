part of "../presentation.dart";

class NewNoteForm extends StatefulWidget {
  const NewNoteForm({super.key});

  @override
  State<NewNoteForm> createState() => _NewNoteFormState();
}

class _NewNoteFormState extends State<NewNoteForm> {
  late final TextEditingController titleController;
  late final TextEditingController textController;
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    titleController = TextEditingController();
    textController = TextEditingController();
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Form(
        key: formKey,
        child: BlocProvider(
          create: (context) => CreateNoteCubit(getIt.get<NoteRepo>(), getIt.get<TagRepo>()),
          child: BlocConsumer<CreateNoteCubit, CreateNoteState>(
            listener: (context, state) => switch (state.created) {
              true => Navigator.of(context).pop(),
              _ => {},
            },
            builder: (context, state) => Column(
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey[400]!),
                    ),
                    labelText: "Title",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Title must be not empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey[400]!),
                    ),
                    labelText: "Text",
                  ),
                  maxLines: null,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Text must be not empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                Wrap(
                  children: [
                    for (var tag in state.tags) ...[
                      Text(tag.name),
                      const SizedBox(width: 8),
                    ]
                  ],
                ),
                const SizedBox(height: 8),
                DropdownButton<Tag>(
                  items: state.availableTags
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e.name),
                          ))
                      .toList(),
                  onChanged: (tag) {
                    if (tag != null) {
                      context.read<CreateNoteCubit>().updateTag(tag);
                    }
                  },
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<CreateNoteCubit>().createNote(textController.text, titleController.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Note added"),
                        ),
                      );
                    }
                  },
                  child: const Text("Add"),
                )
              ],
            ),
          ),
        ),
      );
}
