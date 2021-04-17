import 'package:flutter/material.dart';

class ProfileBackground extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: screenHeight*0.47,
      decoration:BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFF51827),
                Color(0xFF752F34),
              ],
            begin: FractionalOffset(0.2,0.0),//Pendiente de revisar si es el correcto!!!
            end: FractionalOffset(1.0,1.0),
            stops: [0.0,0.8],
            tileMode: TileMode.clamp
          )
      ),
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-2,-1),
        child: Container(
          width: screenWidth*1.5,
          height: screenHeight*.8,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            borderRadius: BorderRadius.circular(screenHeight/0.5)
          ),
        ),
      ),
    );
  }
  
}