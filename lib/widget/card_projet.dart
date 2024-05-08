import 'package:flutter/material.dart';

import 'headerr.dart';

class Projet extends StatelessWidget {
  final String projectName;
  final String date;
  final String description;
  final String image;
  final List<String> skills;

  Projet({
    required this.projectName,
    required this.date,
    required this.description,
    required this.skills,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).canvasColor,

      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Headerr(AssetImage(image), projectName),

            SizedBox(height: 5),

            SizedBox(height: 10),
            Text(
              "Description:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Theme.of(context).cardColor),
            ),
            Text(
              description,
              style: TextStyle(fontSize: 16,color: Theme.of(context).cardColor),
            ),
            SizedBox(height: 10),
            Text(
              "Compétence:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Theme.of(context).cardColor),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: skills.map((skill) {
                return Text(
                  "• $skill",
                  style: TextStyle(fontSize: 16,color: Theme.of(context).cardColor),
                );
              }).toList(),
            ),


            SizedBox(height: 10),
            Text(
              "Date: $date",
              style: TextStyle(fontSize: 16,color: Theme.of(context).cardColor),
            ),
          ],
        ),
      ),
    );
  }
}
