import 'package:flutter/material.dart';
import 'package:mimi/sharedData/home.dart';
import 'package:mimi/ui/home/home.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (_) => HomeState(),
        )
      ],
      child: MaterialApp(
        title: "我是居",
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        routes:{
          "/":(b)=>HomePage(),
        },
      ),
    );
  }
}
