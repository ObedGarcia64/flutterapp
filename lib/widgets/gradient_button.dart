import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientButton extends StatelessWidget {

  String buttonText = "";

  GradientButton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
            SnackBar(content: Text("Added to wish place"))
        );
      },
      child: Container(
          margin: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF70343E),
                    Color(0xFFF02649)
                  ],
                  begin: FractionalOffset(0.0,0.0),
                  end: FractionalOffset(0.0,0.7),
                  stops: [0.0,1.0],
                  tileMode: TileMode.clamp
              )
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          )
      ),
    );
  }

}