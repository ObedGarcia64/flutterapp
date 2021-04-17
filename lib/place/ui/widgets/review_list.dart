import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  String pathImage1 = "https://ca.slack-edge.com/T014436C7U4-U013WHW78P7-3136b72ad0cf-512";
  String name1 = "Sully Repartidor";
  String details1 = "77 Reviews - 69 photos";
  String comment1 = "Ya estuvo suave";

  String pathImage2 = "https://crazyminds.es/wp-content/uploads/BILLIE-EILISH-1.jpg";
  String name2 ="Billie ❤";
  String details2 = "32 Reviews - 32 photos";
  String comment2 = "Jaja un Aguacate 🥑";

  String pathImage3 = "https://scontent.fcuu2-1.fna.fbcdn.net/v/t1.6435-9/43571572_2024622517575846_699433285259886592_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=174925&_nc_ohc=TV7TJvZHvH4AX8gyay6&_nc_ht=scontent.fcuu2-1.fna&oh=cc631d0a82edeb8c71c078a46adeda25&oe=609CF853";
  String name3 = "Decanini Camarguense";
  String details3 = "1 Review - 998 photos";
  String comment3 = "Soy de camargo y no hay oxxos";

  String pathImage4 = "https://scontent.fcuu2-1.fna.fbcdn.net/v/t1.0-9/936625_1019431041451404_3758358787327547442_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=BOD-7Mc0LGEAX8FFFMY&_nc_ht=scontent.fcuu2-1.fna&oh=2735b1b1d11a86a2f32a16f31f5894a3&oe=607E562D";
  String name4 = "Yo merengues";
  String details4 = "30 Reviews - 58 photos";
  String comment4 = "Mira mama. Estoy en una app!";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        ),
          child: Text(
            "All reviews",
            style: TextStyle(
              fontSize: 14.0,
              color:Colors.black45,
            ),
          ),
         ),

        Review(pathImage1,name1,details1,comment1),
        Review(pathImage2, name2, details2, comment2),
        Review(pathImage3, name3, details3, comment3),
        Review(pathImage4, name4, details4, comment4)
      ],
    );
  }
  
}