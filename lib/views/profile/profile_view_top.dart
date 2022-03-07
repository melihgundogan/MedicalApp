// ignore_for_file: non_constant_identifier_names

part of profile_view;

AppBar ProfilViewTop(BuildContext context) {
  final s = MediaQuery.of(context).size;
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: const Text(
      'Profile details',
      style: TextStyle(color: Colors.black),
    ),
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    toolbarHeight: 100,
  );
}
