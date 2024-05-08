import 'dart:async';

import 'package:cv/widget/headerr.dart';
import 'package:flutter/material.dart';
import '../widget/header.dart';
import 'maps.dart';

class ProfilScreen extends StatelessWidget {
  List<String> skills = [
    'Flutter',
    'Android',
    'Unity',
    'ReactJS',
    'Angular',
    'Larvel',
    'Flask',
    '.Net',
    'C#',
    'C++',
    'Docker',
    'IOT'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        color: Theme.of(context).backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Headerr(AssetImage('assets/img/aziz.jpg'), 'Ingénieur informatique'),
            SizedBox(height: 10),
            Divider(  color: Theme.of(context).canvasColor,),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Icon(
                  Icons.contact_mail,
                  color: Theme.of(context).cardColor,
                ),
                SizedBox(width: 20),
                Text(
                  "Contact",
                  style: TextStyle(
                      color: Theme.of(context).cardColor, fontSize: 25),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Theme.of(context).cardColor,
                ),
                SizedBox(width: 22),
                Text(
                  "hammemmiabdelaziz@gmail.com",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).cardColor,
                      fontSize: 16),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Theme.of(context).cardColor,
                ),
                SizedBox(width: 22),
                Text(
                  "25897794",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).cardColor,
                      fontSize: 16),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.person,
                  color: Theme.of(context).cardColor,
                ),
                SizedBox(width: 22),
                Text(
                  "24 ans",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).cardColor,
                      fontSize: 16),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Theme.of(context).cardColor,
                ),
                SizedBox(width: 22),
                Text(
                  "Route lafran 1.5km",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).cardColor,
                      fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Icon(
                  Icons.card_travel,
                  color: Theme.of(context).cardColor,
                ),
                SizedBox(width: 20),
                Text(
                  "Compétences",
                  style: TextStyle(
                      color: Theme.of(context).cardColor, fontSize: 25),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 5,
                children: List.generate(skills.length, (index) {
                  return Text('• ${skills[index]}',
                      style: TextStyle(
                          color: Theme.of(context).cardColor, fontSize: 16));
                }),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 300,
              child: GoogleMap(),
            ),
          ],
        ),
      ),
    );
  }
}
