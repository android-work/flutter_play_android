import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterplayandroid/util/LogUtil.dart';
import 'package:flutterplayandroid/util/TimerUtil.dart';

import 'MainRoute.dart';

class SplashRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashRouteState();
  }
}

class _SplashRouteState extends State<SplashRoute> {
  static const TAG = "SplashRoute";
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      // 三秒后进入主页
      LogUtil.logI(TAG, "SplashRoute 3 seconds after into MainRoute");
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
        builder: (BuildContext context) => MainRoute(),
      ), (route) => route == null);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: null,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                  size: 80,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Flutter Play Android",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ));
  }

  @override
  void dispose() {
    super.dispose();
    // 关闭定时器
    _timer?.cancel();
  }
}
