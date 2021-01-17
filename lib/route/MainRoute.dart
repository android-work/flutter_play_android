import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterplayandroid/bean/BaseBean.dart';
import 'package:flutterplayandroid/http/ApiService.dart';
import 'package:flutterplayandroid/http/HttpUtil.dart';
import 'package:flutterplayandroid/util/LogUtil.dart';
import 'package:flutterplayandroid/widget/MyAppBar.dart';
import 'package:flutterplayandroid/widget/PublicListView.dart';

class MainRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  static const TAG = "MainPageState";

  BaseBean _navgiaBaseBean;

  @override
  Widget build(BuildContext context) {

    // 请求导航栏数据
    ApiService.getNagivData((baseBean) {
      LogUtil.logI(TAG, "nagivData request callback");
      _navgiaBaseBean = baseBean;
    });

    return Scaffold(
      appBar: MyAppBar(context,
          title: "首页",
          style: TextStyle(color: Colors.white70, fontSize: 18),
          icon: Icon(
            Icons.dehaze,
            size: 20,
          ), callback: (context) {
        // 开启侧拉栏
        Scaffold.of(context).openDrawer();
      }),
      body: Center(
        child: Text(""),
      ),
      drawer: drawerMenu(),
    );
  }

  //创建侧拉菜单
  Widget drawerMenu() {
    return Builder(
      builder: (context) {
        return Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // 侧拉栏标题
              MyAppBar.getAppBar(
                  title: "导航",
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                  icon: Icon(
                    Icons.keyboard_backspace,
                    size: 20,
                  ),
                  callback: (context) {
                    // 关闭侧拉栏
                    Scaffold.of(context).openEndDrawer();
                  }),
              // 横向布局(子widget为2个纵向的listview)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                verticalDirection: VerticalDirection.down,
                mainAxisSize: MainAxisSize.min,
                children: getRowChildWidget(),
              )
            ],
          ),
        );
      },
    );
  }

  List<Widget> getRowChildWidget() {
    List<Widget> childList = List();
    // 添加两个垂直列表widget
    childList.add(PublicTextListView(_navgiaBaseBean));
    childList.add(PublicTextListView(_navgiaBaseBean));
    return childList;
  }
}
