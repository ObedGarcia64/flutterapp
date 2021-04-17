import 'package:flutter/material.dart';
import 'package:tidbisexample/widgets/profile_place.dart';
import 'profile_place_info.dart';
import 'package:tidbisexample/place/model/place.dart';

//ignore: must_be_inmutable
class ProfilePlaceList extends StatelessWidget{

  Place place1 = Place("Kame house", "Kame House and its small island is located in the Southeast Islands Area.","Tourist Attraction","8");
  String place1Img = "https://images.hdqwalls.com/download/kame-house-dragon-ball-gs-1920x1080.jpg";

  Place place2 = Place("Diosito's house","In the heaven","Nice place","∞");
  String place2Img = "https://wallpaper-house.com/data/out/6/wallpaper2you_114125.jpg";

  Place place3 = Place("Bikini Bottom","Bikini Bottom is located in the Pacific Ocean, beneath Bikini Atoll in the Marshall Islands.","Turist Attraction","777,777");
  String place3Img ="https://static.wikia.nocookie.net/spongebob/images/3/3b/SpongeBob_Intro_1999_%283%29.png/revision/latest/scale-to-width-down/1000?cb=20170429063008";

  Place place4 = Place("Simpson's house","To the left of the Simpsons' house (as seen from the street) is Ned Flanders's house, at 744 Evergreen Terrace.","House","3812");
  String place4Img ="https://c4.wallpaperflare.com/wallpaper/557/534/402/cartoon-house-the-simpsons-house-entertainment-tv-series-hd-art-wallpaper-preview.jpg";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(
        top: screenHeight*0.50,
        left: 20,
        right: 20,
        bottom: 10,
      ),
      child: Column(
        children: [
          ProfilePlace(place1Img, place1),
          ProfilePlace(place2Img, place2),
          ProfilePlace(place3Img, place3),
          ProfilePlace(place4Img, place4),
        ],
      ),
    );
  }
}

