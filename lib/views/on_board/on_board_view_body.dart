part of on_board;

class OnBoardBody extends StatelessWidget {
  const OnBoardBody({
    Key key,
    @required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OnBoardPhoto(
          s: s,
          image: OnBoardNetworkImage().onboardDoctorImage,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: OnBoardPhoto(
            s: s,
            image: OnBoardNetworkImage().onboardPersonImage,
          ),
        ),
      ],
    );
  }
}


