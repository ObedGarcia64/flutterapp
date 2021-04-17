import 'package:flutter/material.dart';
import 'package:tidbisexample/user/ui/widgets/profile_background.dart';
import 'package:tidbisexample/user/ui/widgets/profile_place.dart';
import 'package:tidbisexample/widgets/profile_place_list.dart';
import 'profile_header.dart';

class profile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        ListView(
         children: [
           ProfilePlaceList()
         ],
        ),
        ProfileBackground(),
        ProfileHeader()
      ],
    );
  }

}