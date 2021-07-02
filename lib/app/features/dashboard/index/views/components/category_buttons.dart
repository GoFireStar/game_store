part of dashboard;

class _CategoryButtons extends StatelessWidget {
  const _CategoryButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 10),
          CustomIconButton(
            icon: FontAwesomeIcons.skiing,
            label: "Sport",
            onPressed: () {},
            primary: Colors.green[300],
          ),
          SizedBox(width: 10),
          CustomIconButton(
            icon: FontAwesomeIcons.chess,
            label: "Strategy",
            onPressed: () {},
            primary: Colors.blue,
          ),
          SizedBox(width: 10),
          CustomIconButton(
            icon: FontAwesomeIcons.meteor,
            label: "Action",
            onPressed: () {},
            primary: Colors.redAccent,
          ),
          SizedBox(width: 10),
          CustomIconButton(
            icon: FontAwesomeIcons.guitar,
            label: "musical",
            onPressed: () {},
            primary: Colors.brown[400],
          ),
          SizedBox(width: 10),
          CustomIconButton(
            icon: FontAwesomeIcons.car,
            label: "simulation",
            onPressed: () {},
            primary: Colors.blue,
          ),
          SizedBox(width: 10),
          CustomIconButton(
            icon: Icons.more_horiz,
            label: "more",
            onPressed: () {},
            primary: Colors.indigoAccent,
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
