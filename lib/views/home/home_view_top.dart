// ignore_for_file: non_constant_identifier_names

part of home_view;

AppBar HomeViewTop(BuildContext context) {
  final s = MediaQuery.of(context).size;
  return AppBar(
    leadingWidth: 0,
    toolbarHeight: 100,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Row(
      children: [
        // ignore: prefer_const_constructors
        ClipOval(
          child: CircleAvatar(
            child: Image.network(HomeNetworkImage().circleAvatarImage),
            radius: 30,
          ),
        ),
        SizedBox(
          width: s.width / 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(
              text: 'Welcome back',
              color: MainColors().grey,
              size: 12,
            ),
            MainText(
              text: 'Melih',
              color: HomeColors().nameColor,
            ),
          ],
        ),
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(16),
        child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'profileViewRoute');
            },
            icon: const Icon(
              Icons.segment,
              color: Colors.black,
              size: 36,
            )),
      ),
    ],
  );
}
