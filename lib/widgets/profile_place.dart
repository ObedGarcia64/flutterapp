import 'package:flutter/material.dart';
import 'package:tidbisexample/place/model/place.dart';
import 'profile_place_info.dart';

// ignore: must_be_immutable
class ProfilePlace extends StatelessWidget{

  String placeImg;
  Place place;

  ProfilePlace(this.placeImg, this.place);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    final placePhoto = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        bottom: 70.0,
      ),
      height: screenHeight*0.35,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(placeImg)
        ),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 10.0,
            offset: Offset(0.0,0.5)
          )
        ]
      ),
    );
    return Stack(
      alignment:Alignment(0.0,0.8),
      children: [
        placePhoto,
        ProfilePlaceInfo(place)
      ],
    );
  }
}