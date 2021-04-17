import 'package:flutter/material.dart';

class Star extends StatelessWidget{

  double topDistance;
  var size;
  var icon;

  Star(this.icon, [this.topDistance, this.size]);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(
            top: topDistance +3.0,
            left: 3.0
        ) ,
        child: Icon (
            icon,
            color: Colors.limeAccent,
            size: size,
        )
    );
  }

}