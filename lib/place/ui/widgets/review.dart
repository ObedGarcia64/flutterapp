import 'package:flutter/material.dart';
import '../../../widgets/star.dart';

class Review extends StatelessWidget{

  String pathImage = "";
  String name = "";
  String details = "";
  String comment = "";

  double topDistance = -3.0;
  double size = 14.0;


  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context){
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80,
      height: 80,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(pathImage)
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17,
        ),
      ),
    );

    final userDetails = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 40.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userComment  = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
       comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.w900,
            fontSize: 14,
            color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row(
          children: [
            userDetails,
            Star(Icons.star, topDistance, size),
            Star(Icons.star, topDistance, size),
            Star(Icons.star_half, topDistance, size),
            Star(Icons.star_border, topDistance, size),
            Star(Icons.star_border, topDistance, size),
         ],
        ),
        userComment,
      ],
    );

    return Row(
      children: [
        photo,
        userInfo,
      ],
    );
  }

  }
