import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mimi/sharedData/home.dart';
import 'package:mimi/sharedData/user_info.dart';
import 'package:provider/provider.dart';

import '../../screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String _validatePassword(String text) {
    if (text.length < 4) {
      return "length err";
    } else
      return null;
  }

  String _validateAccount(String text) {
    if (text.length < 4) {
      return "length err";
    } else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        color: Colors.white,
        padding:
            EdgeInsets.only(left: width(design: 48), right: width(design: 48)),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Container(
                    height: ScreenUtil.statusBarHeight,
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    "登录",
                    style: TextStyle(fontSize: sp(16), color: Colors.black),
                  ),
                  SizedBox(
                    height: height(design: 76),
                  ),
                  TextFormField(
                    validator: _validateAccount,
                    autovalidate: true,
                    onSaved: (s) {
                      Provider.of<UserInfo>(context).account = s;
                    },
                    decoration: InputDecoration(
                      hintText: "请输入手机号码",
                      labelText: "请输入手机号码",
                      icon: Icon(Icons.lock_open),
                    ),
                  ),
                  SizedBox(
                    height: height(design: 32),
                  ),
                  TextFormField(
                    validator: _validatePassword,
                    autovalidate: true,
                    onSaved: (s) {
                      Provider.of<UserInfo>(context).password = s;
                    },
                    decoration: InputDecoration(
                        labelText: "请输入密码",
                        icon: Icon(Icons.lock_open),
                        hintText: "请输入密码"),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap: () {
                          Provider.of<HomeState>(context)
                              .setHomeState(HomeState.forgetPassword);
                        },
                        child: Text(
                          "忘记密码？",
                          style: TextStyle(color: Colors.blueAccent),
                        )),
                  ),
                  GestureDetector(
                      onTap: () {
                        print("comfirm");
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          Provider.of<HomeState>(context)
                              .setHomeState(HomeState.home_main);
                        }
                      },
                      child: Container(
                        height: height(design: 50),
                        margin: EdgeInsets.only(top: 110),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Container(
                          child: Text(
                            "确定",
                            style: TextStyle(
                                color: Colors.white, fontSize: sp(16)),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: height(design: 35),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("没有账号？"),
                      SizedBox(
                        width: width(design: 5),
                      ),
                      GestureDetector(
                        child: Text(
                          "立即注册",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        onTap: () {
                          Provider.of<HomeState>(context)
                              .setHomeState(HomeState.register);
                        },
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
