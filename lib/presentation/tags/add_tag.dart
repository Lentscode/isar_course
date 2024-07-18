part of "../presentation.dart";

// Definisce un widget Stateful per aggiungere un nuovo tag.
class AddTag extends StatefulWidget {
  const AddTag({super.key});

  @override
  State<AddTag> createState() => _AddTagState();
}

// Stato per il widget AddTag.
class _AddTagState extends State<AddTag> {
  // Controller per il campo di testo del tag.
  late TextEditingController controller;

  // Inizializzazione degli stati.
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  // Rilascio delle risorse quando il widget viene smontato.
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // Costruisce l'interfaccia utente del widget.
  @override
  Widget build(BuildContext context) => Row(
        children: [
          // Campo di testo per inserire il nome del tag.
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(controller: controller),
            ),
          ),
          // Pulsante per aggiungere il tag.
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: FilledButton(
                onPressed: () => context.read<TagsCubit>().addTag(controller.text),
                child: const Text("Add"),
              ),
            ),
          ),
        ],
      );
}
