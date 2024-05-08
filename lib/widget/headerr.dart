import 'package:flutter/material.dart';

class Headerr extends StatelessWidget {
  final String title;
  final AssetImage image;

  Headerr(this.image, this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          backgroundColor: Theme.of(context).canvasColor,
          backgroundImage: image,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 25, color: Theme.of(context).cardColor),
        )
      ],
    );
  }
}