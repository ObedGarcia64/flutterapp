import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:tidbisexample/user/bloc/user_bloc.dart';
import 'place/ui/screen/home.dart';
import 'place/ui/screen/search.dart';
import 'user/ui/screen/profile.dart';

class AppsCupertino extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: null),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: null),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: null),
          ],
        ),
        tabBuilder: (BuildContext context, int index ){
          switch(index){
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => home(),
              );
              break;

            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => search(),
              );
              break;

            case 2:
              return CupertinoTabView(
                builder: (BuildContext context){
                  return BlocProvider(
                      child: profile(),
                      bloc: UserBloc()
                  );
                }
              );
              break;

            default:
              return null;
          }
        },
      ),
    );
  }

}