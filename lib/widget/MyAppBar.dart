import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// leading的点击事件回调
typedef LeadingCallback = void Function(BuildContext context);

class MyAppBar extends AppBar {
  static AppBar getAppBar(
      {String title, TextStyle style, Icon icon, LeadingCallback callback}) {
    return AppBar(
      title: Text(
        title,
        style: style,
      ),
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: icon, //Icon(Icons.dehaze,size: 20,)
            // 点击事件开启侧拉菜单
            onPressed: () {
              if(callback != null) {
                callback(context);
              }
            }, //Scaffold.of(context).openDrawer()
          );
        },
      ),
    );
  }

  MyAppBar(BuildContext context,
      {String title, TextStyle style, Icon icon, LeadingCallback callback})
      : super(
            title: Text(
              title, //"首页"
              style: style, //TextStyle(color: Colors.white70, fontSize: 18)
            ),
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: icon, //Icon(Icons.dehaze,size: 20,)
                  // 点击事件开启侧拉菜单
                  onPressed: () {
                    if(callback != null) {
                      callback(context);
                    }
                  } //Scaffold.of(context).openDrawer()
                );
              },
            ));
}
