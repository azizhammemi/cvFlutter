import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widget/header.dart';

class ExpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: <Widget>[
          Header(Icon(Icons.update,color: Colors.white,), 'Expériences'),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).canvasColor,
          ),
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Container(
                  color: Theme.of(context).canvasColor,

                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Robot ',
                        style: TextStyle(fontSize: 24, color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'je cree un robot avec mes amis avec un manette pour controller  ',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'Année:2021',
                        style: TextStyle(fontSize: 18,color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'Compétence:Arduino,c++',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Image.asset('assets/img/robot.PNG',fit: BoxFit.fill,),

                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).canvasColor,
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Panneau affichage',
                        style: TextStyle(fontSize: 24,color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'je cree un panneau affichge pour un pharmacie  ',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'Annee:2022',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'Compétence:Arduino,c++',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Image.asset('assets/img/pharmacie.PNG',fit: BoxFit.fill,width: 200,),
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).canvasColor,
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Warrior brid',
                        style: TextStyle(fontSize: 24,color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'je creer un jeux vidéo  warrior brid,brave bird et je mettre dans play store ',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'Annee:2023',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'Compétence:Unity,C#',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Image.asset('assets/img/warrior.jpg',fit: BoxFit.fill,width: 100,),
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).canvasColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pumpkiun head',
                        style: TextStyle(fontSize: 24,  color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'je creer un jeux vidéo pumpkiun head et je mettre dans play store ',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'Date:2023',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'Compétence:Unity,C#',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Image.asset('assets/img/pumpkin.jpg',fit: BoxFit.fill,width: 200,),
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).canvasColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Encherire ',
                        style: TextStyle(fontSize: 24,  color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'je creé un site web pour faire enchere online ',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'Date:2023',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Text(
                        'Compétence:Laravel,Vue-js',
                        style: TextStyle(fontSize: 18, color: Theme.of(context).cardColor),
                      ),
                      Image.asset('assets/img/betta.PNG',fit: BoxFit.fill,width: 400,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
