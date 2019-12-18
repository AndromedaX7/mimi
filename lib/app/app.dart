import 'package:flutter/material.dart';
import 'package:mimi/sharedData/home.dart';
import 'package:mimi/sharedData/route.dart';
import 'package:mimi/sharedData/user_info.dart';
import 'package:mimi/ui/home/home.dart';
import 'package:mimi/ui/shop/shop.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (_) => HomeState(),
        ),
        ChangeNotifierProvider(
          builder: (_) => UserInfo(),
        )
      ],
      child: MaterialApp(
        title: "我是居",
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        routes: {
          RoutePath.root: (b) => HomePage(),
          RoutePath.shop:(b)=>ShopPage(),
        },
      ),
    );
  }
}
