part of dashboard;

class _Header extends GetView<DashboardController> {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Welcome, " + GetUtils.capitalize(controller.user.name)!,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                    ),
              ),
              CircleAvatar(
                backgroundImage: controller.user.image,
              )
            ],
          ),
          Text(
            "What would you like to play ? ",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}
