import 'package:flutter/material.dart';
import 'package:social_app/pages/connections_page.dart';
import 'package:social_app/pages/home_page.dart';
import 'package:social_app/pages/meetup_page.dart';
import 'package:social_app/pages/notification_page.dart';
import 'package:social_app/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ProfilePage(),
    ConnectionsPage(),
    MeetupPage(),
    NotificationPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
                // color: Colors.grey[500],
              ),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person,
              ),
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.search,
            ),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.location_on),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.notification_important_outlined,
            ),
            backgroundColor: Colors.blue,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        // selectedItemColor: Colors.orange,

        unselectedItemColor: Colors.grey[500],
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        iconSize: 26,
        elevation: 5,
      ),
    );
  }
}
