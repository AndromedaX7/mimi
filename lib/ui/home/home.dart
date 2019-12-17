import 'package:flutter/material.dart';
import 'package:mimi/icons/icons.dart';
import 'package:mimi/sharedData/home.dart';
import 'package:mimi/ui/account/login.dart';
import 'package:provider/provider.dart';

import '../../screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    init(context);
    return Scaffold(
      body: IndexedStack(
        index: Provider.of<HomeState>(context).state,
        sizing: StackFit.expand,
        children: <Widget>[
          _login(),
//          _register(),
//          _forgetPassword(),
//          _home_main(),
//          _home_more(),
//          _home_person(),
        ],
      ),
      bottomNavigationBar:
          Provider.of<HomeState>(context).state >= HomeState.home
              ? BottomNavigationBar(
                  items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: Icon(Icons2.ic_home), title: Text("首页")),
                      BottomNavigationBarItem(
                          icon: Icon(Icons2.ic_more), title: Text("更多功能")),
                      BottomNavigationBarItem(
                          icon: Icon(Icons2.ic_person), title: Text("联系人"))
                    ],
                  currentIndex:
                      Provider.of<HomeState>(context).state - HomeState.home)
              : null,
    );
  }

  Widget _login() {
    return LoginPage();
  }

  Widget _register() {}

  Widget _forgetPassword() {}

  Widget _home_main() {}

  Widget _home_more() {}

  Widget _home_person() {}
}
