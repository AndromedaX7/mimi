import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("购物商城"),
          bottom: TabBar(
            tabs: <Tab>[
              Tab(
                text: "商城",
              ),
              Tab(
                text: "购物车",
              ),
              Tab(
                text: "我的",
              )
            ],
          ),
        ),
        body: _shop(),
      ),
    );
  }

  Widget _shop( ){
    return GridView.count(crossAxisCount: 2);
  }
}
