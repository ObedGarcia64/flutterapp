import 'package:flutter/material.dart';
import 'package:tidbisexample/widgets/gradient_background.dart';
import 'package:tidbisexample/widgets/genetic_button.dart';
import 'package:tidbisexample/user/bloc/user_bloc.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:tidbisexample/app_cupertino.dart';

class SignInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen>{

  UserBloc userBloc ;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleUserSession();
  }

  Widget _handleUserSession(){
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(!snapshot.hasData || snapshot. hasError){
            return SignInGoogleUI();
          }else{
            return AppsCupertino();
          }
        }
    );
  }

  Widget SignInGoogleUI(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBackground("", null),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome\nThis is your Travel app",
                  style: TextStyle(
                    fontSize: 38.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                GenericButton(buttonText: "Login with your Gmail account", onPressed: (){
                    userBloc.signOut();
                    userBloc.signIn();
                  },
                  width: null,
                  height: 50,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  
}