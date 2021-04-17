import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:tidbisexample/user/bloc/user_bloc.dart';
import 'circule_button.dart';

class ButtonsBar extends StatelessWidget{

  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(padding: EdgeInsets.symmetric(
      horizontal: 0.0,
      vertical: 10.0,
    ),
      child: Row(
        children: [
          CirculeButton(true, Icons.turned_in_not, 20, Color.fromRGBO(255, 255, 255, 1), ()=>{}),
          CirculeButton(true, Icons.card_travel, 20, Color.fromRGBO(255, 255, 255, 0.5), ()=>{}),
          CirculeButton(false, Icons.add, 40, Color.fromRGBO(255, 255, 255, 1), ()=>{}),
          CirculeButton(true, Icons.mail_outline, 20, Color.fromRGBO(255, 255, 255, 0.5), ()=>{}),
          CirculeButton(true, Icons.logout, 20, Color.fromRGBO(255, 255, 255, 1), ()=>{userBloc.signOut()}),
        ],
      ),
    );
  }
}