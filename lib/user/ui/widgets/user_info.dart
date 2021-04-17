import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tidbisexample/user/model/USER.dart';

class UserInfo extends StatelessWidget{

  User user;
  UserInfo(@required this.user);



  @override
  Widget build(BuildContext context) {

    final userImg = Container(
      width: 100,
      height: 100,

      margin: EdgeInsets.only(
        right: 20
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
            width: 2.0,
          style: BorderStyle.solid
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(this.user.photoUrl)
        )
      ),
    );

    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
        bottom: 5.0,
        ),
        child: Text(
          user.name,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            ),
          ),
        ),
        Container(
          child: Text(
            user.email,
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white24,
            ),
          ),
        )
      ],
    );

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 0,
      ),
      child: Row(
        children: [
          userImg,
          userInfo,
        ],
      )
    );
  }
}