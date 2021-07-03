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
                  .map((product) => Hero(
                        tag: controller.getPopularGameTag(product),
                        child: CardImage(
                          image: product.backgroundImage,
                          onPressed: () => controller.goToDetail(
                            product,
                            heroTag: controller.getPopularGameTag(product),
                          ),
                        ),
                      ))
                  .toList()),
        )
      ],
    );
  }
}
