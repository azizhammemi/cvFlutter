import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:cv/screen/educ_screen.dart';
import 'package:cv/screen/exp_screen.dart';
import 'package:cv/screen/formation_screen.dart';
import 'package:cv/screen/profile_screen.dart';

class TabBarState extends StatefulWidget {
  Function switchTheme;

  TabBarState(this.switchTheme);

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarState> {
  var _indexPages = 0;
  List<Widget> pages = [
    ProfilScreen(),
    FormationScreen(),
    educ_screen(),
    ExpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.format_color_fill),
            onPressed: () {
              widget.switchTheme();
            },
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        items: <Widget>[
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.school,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.phonelink,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.update,
            size: 30,
            color: Colors.white,
          )
        ],
        onTap: (index) {
          setState(() {
            _indexPages = index;
          });
        },
      ),
      body: pages[_indexPages],
    );
  }
}