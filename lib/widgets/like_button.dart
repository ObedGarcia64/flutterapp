import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LikeButton();
  }
}

class _LikeButton extends State<LikeButton> {

  bool _state = false;

  void onPressedLike(){
    setState(() {
      _state = !this._state;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return FloatingActionButton(
      onPressed: onPressedLike,
      mini: true,
      backgroundColor: Color(0xFFF0D854),
      child: Icon(
          this._state ? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}