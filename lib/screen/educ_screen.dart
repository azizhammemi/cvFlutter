import 'package:cv/widget/card_projet.dart';
import 'package:flutter/material.dart';

import '../widget/header.dart';

class educ_screen extends StatelessWidget {
  const educ_screen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: <Widget>[
          Header(Icon(Icons.phonelink ,color: Colors.white,), 'Stage'),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).canvasColor,
          ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Projet(
                    image:"assets/img/telecom.jpg",
                    projectName: "Tunisie Telecome",
                    description: "dans ce j'ai obtenir des competence social ",
                    skills: ["active","denamique"],
                    date: "01/01/2020-01/02/2020",

                  ),
                  SizedBox(height: 20),
                  Projet(
                    image:"assets/img/ets.png",
                    projectName: "ETS",
                    description: "je fais ce stage dans socite Electrique And Technologie Solution.Je Fais Une Application Android Connecter Sur Une Base de Donneé Distant Pour Commander Un Carte Electronique Esp8266(Iot)",
                    skills: ["Android Studio", "000Webhost", "php","c++","esp8266","mysql"],
                    date: "01/07/2021-01/08/2021",

                  ),

                  SizedBox(height: 20),
                  Projet(
                    image:"assets/img/ise.jpg",
                    projectName: "ISE",
                    description: "Je fais ce stage dans socitie ingénierie des systèmes embarqués.Je Fais Un Conception D'une Solution De Gestion D'un File D'attente Intelligent",
                    skills: ["php", "WinSCP-putty", "text","c++","LinkIt Smart 7688 Duo","Openwort"],
                    date: "01/02/2022-20/05/2022",

                  ),
                  SizedBox(height: 20),
                  Projet(
                    image:"assets/img/ise.jpg",
                    projectName: "ISE",
                    description: "Je fais ce stage dans socitie ingénierie des systèmes embarqués.Je Crée un site web e-commerce",
                    skills: ["php", "ajax", "mysql","excel"],
                    date: "01/07/2023-01/08/2023",

                  ),
                  SizedBox(height: 20),
                  Projet(
                    image:"assets/img/rec.png",
                    projectName: "Rec-inov",
                    description: "Creer un site web de gestion de cv donner chaque cv un score desgin et score par emploie",
                    skills: ["Reactjs", "nodejs", "Flask","pdf"],
                    date: "01/03/2024-01/05/2023",

                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
