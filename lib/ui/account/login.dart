import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../screen.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Container(
                    height: ScreenUtil.statusBarHeight,
                  ),
                  SizedBox(height: 90,
                  ),
                  Text("登录"),
                  SizedBox(height: height(design: 76),),
                  TextFormField(),
                  SizedBox(),
                  TextFormField(),
                  SizedBox(),
                  Text(""),
                  Container(),
                  SizedBox(),
                  Row(),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
