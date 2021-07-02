part of dashboard;

class _Header extends StatelessWidget {
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
                "Welcome,",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                    ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage(ImageRaster.oriBlindForest1),
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
