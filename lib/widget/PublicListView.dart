import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterplayandroid/bean/BaseBean.dart';
import 'package:flutterplayandroid/bean/NavigationBaseBean.dart';
import 'package:flutterplayandroid/bean/NavigationBaseBean.dart';
import 'package:flutterplayandroid/util/LogUtil.dart';

class PublicTextListView extends StatefulWidget{
  BaseBean _baseBean;
  PublicTextListView(BaseBean baseBean){
    this._baseBean = baseBean;
  }

  @override
  State<StatefulWidget> createState() {
    return PublicTextListViewState();
  }

}

class PublicTextListViewState extends State<PublicTextListView> {
  static final String TAG = "PublicTextListViewState";

  @override
  Widget build(BuildContext context) {
    NavigationBaseBean navigationBaseBean = (widget._baseBean as NavigationBaseBean);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 24 - 56,// 24状态栏高度，56导航栏高度
      child: ListView.builder(itemBuilder: (context,index){
        NavigationBean navigatBean = navigationBaseBean.data[index];
        var name = navigatBean.name;
        LogUtil.logI(TAG, "name:$name");
        return ListTile(title: Text(name),);
      },itemCount: navigationBaseBean.data.length,
        itemExtent: 50.0,),
    );
  }
}