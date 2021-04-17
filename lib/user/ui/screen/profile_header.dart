import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:tidbisexample/user/model/USER.dart';
import 'package:tidbisexample/user/ui/widgets/user_info.dart';
import 'package:tidbisexample/user/ui/widgets/buttons_bar.dart';
import 'package:tidbisexample/user/bloc/user_bloc.dart';

class ProfileHeader extends StatelessWidget{

  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of(context);
    User user;

    Widget ShowProfileData(AsyncSnapshot snapshot){
      if(!snapshot.hasData || snapshot.hasError){
        return Container(
         margin: EdgeInsets.only(
           left: 20.0,
           right: 20.0,
           top: 50.0
         ),
          child: Column(
            children: [
              CircularProgressIndicator(),
              Text("No se pudo cargar la información")
            ],
          ),
        );
      }else{
        print(snapshot.data);
        user = User(name: snapshot.data.displayName, email: snapshot.data.email, photoUrl: snapshot.data.photoUrl);
        final title = Text(
          "Profile",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32.0
          ),
        );

        return Container(
          margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 65,
          ),
          child: Column(
            children: [
              title,
              UserInfo(user),
              ButtonsBar()
            ],
          ),
        );
      }
    }

    return StreamBuilder(
        stream: userBloc.streamFirebase,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            case ConnectionState.active:
              return ShowProfileData(snapshot);
            case ConnectionState.done:
              return ShowProfileData(snapshot);
          }
        }
    );

  }
}

