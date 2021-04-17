import 'package:flutter/material.dart';
import '../../../widgets/like_button.dart';

// ignore: must_be_immutable
class CardImage extends StatelessWidget{

  String pathImage = "";

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 300,
      width: 300,

      margin: EdgeInsets.only(
        top: 120.0,
        left: 20.0,
        right: 20.0
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(pathImage)
        ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.2,0.2)
              )
            ]
      ),
    );

    return Stack(
      alignment: Alignment(0.8,0.95),
      children: [
        card,
        LikeButton()
      ],
    );
  }

}