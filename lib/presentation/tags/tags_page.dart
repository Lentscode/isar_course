part of "../presentation.dart";

class TagsPage extends StatelessWidget {
  const TagsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => TagsCubit(getIt.get<TagRepo>()),
        child: Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Expanded(
                    child: BlocBuilder<TagsCubit, List<Tag>>(
                      builder: (context, tags) => ListView.builder(
                        itemCount: tags.length,
                        itemBuilder: (context, index) => TagTile(tag: tags[index]),
                      ),
                    ),
                  ),
                  const AddTag()
                ],
              ),
            ),
          ),
        ),
      );
}
