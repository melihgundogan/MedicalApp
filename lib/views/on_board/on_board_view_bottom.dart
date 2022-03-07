part of on_board;

class OnBoardBottom extends StatelessWidget {
  const OnBoardBottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'homeViewRoute');
          },
          backgroundColor: MainColors().appGreen,
          child: const Icon(
            Icons.arrow_forward,
            size: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: MainText(
            text: AppLocalizations.of(context).get_started,
            size: 12,
          ),
        ),
      ],
    );
  }
}
