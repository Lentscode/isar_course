part of "create_note_cubit.dart";

@immutable
class CreateNoteState {
  final bool created;
  final Set<Tag> tags;
  final List<Tag> availableTags;

  const CreateNoteState({
    this.created = false,
    this.tags = const {},
    this.availableTags = const [],
  });

  CreateNoteState copyWith({
    bool? created,
    Set<Tag>? tags,
    List<Tag>? availableTags
  }) =>
      CreateNoteState(
        created: created ?? this.created,
        tags: tags ?? this.tags,
        availableTags: availableTags ?? this.availableTags
      );
}
