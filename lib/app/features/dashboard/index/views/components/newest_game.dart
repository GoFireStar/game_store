part of dashboard;

class _NewestGame extends GetView<DashboardController> {
  const _NewestGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Newest Game",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(height: 10),
        ...controller.popularGame
            .map((e) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: CardProduct(
                    data: CardProductData(
                        image: e.iconImage,
                        name: e.name,
                        category: e.category,
                        rating: e.rating),
                    onPressed: () => controller.goToDetail(e),
                  ),
                ))
            .toList()
      ],
    );
  }
}
