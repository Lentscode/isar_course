part of "../presentation.dart";

// Definisce un widget Stateful per il modulo di creazione di una nuova nota.
class NewNoteForm extends StatefulWidget {
  const NewNoteForm({super.key});

  @override
  State<NewNoteForm> createState() => _NewNoteFormState();
}

// Stato per il widget NewNoteForm.
class _NewNoteFormState extends State<NewNoteForm> {
  // Controller per il campo di testo del titolo della nota.
  late final TextEditingController titleController;
  // Controller per il campo di testo del testo della nota.
  late final TextEditingController textController;
  // Chiave globale per il form.
  late final GlobalKey<FormState> formKey;

  // Inizializzazione degli stati.
  @override
  void initState() {
    titleController = TextEditingController();
    textController = TextEditingController();
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  // Rilascio delle risorse quando il widget viene smontato.
  @override
  void dispose() {
    titleController.dispose();
    textController.dispose();
    super.dispose();
  }

  // Costruisce l'interfaccia utente del form.
  @override
  Widget build(BuildContext context) => Form(
        key: formKey,
        child: BlocProvider(
          // Crea un CreateNoteCubit con i repository delle note e dei tag.
          create: (context) => CreateNoteCubit(getIt.get<NoteRepo>(), getIt.get<TagRepo>()),
          child: BlocConsumer<CreateNoteCubit, CreateNoteState>(
            // Ascolta i cambiamenti di stato e chiude il form se una nota è stata creata.
            listener: (context, state) => switch (state.created) {
              true => Navigator.of(context).pop(),
              _ => {},
            },
            // Costruisce il modulo con i campi e i bottoni necessari.
            builder: (context, state) => Column(
              children: [
                // Campo di testo per il titolo della nota.
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
                // Campo di testo per il contenuto della nota.
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
                // Mostra i tag associati di volta in volta alla nota.
                Wrap(
                  children: [
                    for (var tag in state.tags) ...[
                      Text(tag.name),
                      const SizedBox(width: 8),
                    ]
                  ],
                ),
                const SizedBox(height: 8),
                // Dropdown per selezionare i tag disponibili.
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
                // Pulsante per aggiungere la nota.
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
