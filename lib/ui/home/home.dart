import 'package:flutter/material.dart';
import 'package:mimi/icons/icons.dart';
import 'package:mimi/sharedData/home.dart';
import 'package:mimi/sharedData/route.dart';
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: IndexedStack(
              index: Provider.of<HomeState>(context).state,
              sizing: StackFit.expand,
              children: <Widget>[
                _login(),
                _register(),
                _forgetPassword(),
                _home_main(),
                _home_more(),
                _home_person(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:
          Provider.of<HomeState>(context).state >= HomeState.home
              ? BottomNavigationBar(
                  onTap: (i) {
                    Provider.of<HomeState>(context)
                        .setHomeState(i + HomeState.home);
                  },
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons2.ic_home), title: Text("首页")),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.settings_input_component),
                        title: Text("更多功能")),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), title: Text("联系人"))
                  ],
                  currentIndex:
                      Provider.of<HomeState>(context).state - HomeState.home)
              : null,
    );
  }

  Widget _login() {
    return LoginPage();
  }

  Widget _register() {
    return Container();
  }

  Widget _forgetPassword() {
    return Container();
  }

  Widget _home_main() {
    return Home_main();
  }

  Widget _home_more() {
    return HomeMore();
  }

  Widget _home_person() {
    return Container();
  }
}

class Home_main extends StatefulWidget {
  @override
  _Home_mainState createState() => _Home_mainState();
}

class _Home_mainState extends State<Home_main> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomeMore extends StatefulWidget {
  @override
  _HomeMoreState createState() => _HomeMoreState();
}

class _HomeMoreState extends State<HomeMore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: height(design: 30)),
      child: ListView.builder(
        itemBuilder: (bc, pos) => item(bc, pos),
        itemCount: 5,
      ),
    );
  }

  Widget item(BuildContext bc, int pos) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: height(design: 4), horizontal: width(design: 8)),
      alignment: Alignment(0, 0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(widgetsName[pos]);
        },
        child: Container(
          width: double.infinity,
          height: height(design: 100),
          padding: EdgeInsets.symmetric(horizontal: width(design: 30)),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/ic_more_bar.png"),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "images/ic_more_$pos.png",
                width: width(design: 28),
                height: height(design: 28),
              ),
              SizedBox(
                height: height(design: 12),
              ),
              Text(_barName[pos])
            ],
          ),
        ),
      ),
    );
  }

  List widgetsName = [
    RoutePath.onlineService,
    RoutePath.shop,
    RoutePath.readBook,
    RoutePath.chatRoom,
    RoutePath.advert
  ];
  List _barName = ["在线服务", "购物商城", "有声书城", "语音聊天室", "广告精品区"];
}
