part of dashboard;

class _PopularGame extends GetView<DashboardController> {
  const _PopularGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Popular Game",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
              children: controller.popularGame
                  .map((e) => Hero(
                        tag: controller.getHeroTag(e),
                        child: CardImage(
                          image: e.backgroundImage,
                          onPressed: () => controller.goToDetail(e),
                        ),
                      ))
                  .toList()),
        )
      ],
    );
  }
}
