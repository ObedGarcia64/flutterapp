import 'dart:ffi';

import 'package:flutter/material.dart';

class CirculeButton extends StatefulWidget{

  bool mini;
  var icon;
  double iconSize;
  var color;
  final VoidCallback onPressed;


  CirculeButton(this.mini, this.icon, this.iconSize, this.color, @required this.onPressed);

  @override
  State<StatefulWidget> createState() {
    return _CirculeButton();
  }

}

class _CirculeButton extends State<CirculeButton>{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(child: FloatingActionButton(backgroundColor: widget.color, mini: widget.mini, onPressed: widget.onPressed, child: Icon(widget.icon, size: widget.iconSize, color: Color(0xFF752F34),),),);
  }
  
}