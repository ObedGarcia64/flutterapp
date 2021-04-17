import 'package:flutter/material.dart';

class User{
  final String name;
  final String email;
  final String photoUrl;

  User({Key Key,
  @required this.name,
  @required this.email,
  @required this.photoUrl
  });
}