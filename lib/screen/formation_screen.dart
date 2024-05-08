import 'package:flutter/material.dart';

import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

import '../widget/card_formation.dart';
import '../widget/header.dart';

class FormationScreen extends StatelessWidget {
  List<TimelineModel> items = [
    TimelineModel(
        CardFormation('assets/img/15november.jpg', '2019',
            'Baccalauréat au lycée 15 november'),
        position: TimelineItemPosition.left,
        iconBackground: Colors.green,
        icon: Icon(Icons.school)),
    TimelineModel(
        CardFormation('assets/img/isetsfax.jpg', '2022',
            'technicien supérieur en systéme embarquer et mobile'),
        position: TimelineItemPosition.right,
        iconBackground: Colors.redAccent,
        icon: Icon(Icons.school)),
    TimelineModel(
        CardFormation('assets/img/iit.jpg', '2024',
            'au cour en étude en genie informatique '),
        position: TimelineItemPosition.left,
        iconBackground: Colors.blue,
        icon: Icon(Icons.school)),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,

      child: Column(

        children: <Widget>[
          Header(Icon(Icons.school,color: Colors.white,), 'Formations'),
          SizedBox(
            height: 10,

          ),
          Divider(
            color: Theme.of(context).canvasColor,

          ),

          Expanded(


            child: Timeline(
              lineColor: Colors.black,

              children: items,
              position: TimelinePosition.Center,
            ),
          )
        ],
      ),
    );
  }
}