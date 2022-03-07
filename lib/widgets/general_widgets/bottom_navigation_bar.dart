import 'package:flutter/material.dart';

class BottomNavigationAppBar extends StatelessWidget {
  const BottomNavigationAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: CircleAvatar(child: Icon(Icons.home_outlined, color: Colors.white,), backgroundColor: Color.fromRGBO(0, 220, 167, 1), radius: 25,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(child: Icon(Icons.person_outlined, color: Colors.grey,), backgroundColor: Colors.transparent, radius: 25,),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(backgroundColor: Colors.transparent, child: Icon(Icons.calendar_today_outlined, color: Colors.grey), radius: 25,),
          label: 'Calender',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(backgroundColor: Colors.transparent, child: Icon(Icons.notifications_active_outlined, color: Colors.grey), radius: 25,),
          label: 'Notification',
        ),
      ],
    );
  }
}