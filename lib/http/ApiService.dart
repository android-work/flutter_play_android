import 'dart:convert' show json, utf8;
import 'dart:io';

import 'package:flutterplayandroid/Constant.dart';
import 'package:flutterplayandroid/bean/BaseBean.dart';
import 'package:flutterplayandroid/bean/NavigationBaseBean.dart';
import 'package:flutterplayandroid/http/HttpUtil.dart';
import 'package:flutterplayandroid/util/Utils.dart';

typedef void Callback(BaseBean baseBean);

class ApiService {
  static final String TAG = "ApiService";

  // 导航数据获取
  static void getNagivData(Callback callback) async {
    HttpClientRequest httpClientRequest = await HttpUtil.INTENCE
        .getHttpClient()
        .getUrl(Utils.uriTransform(Constant.NAVIGATION_URL));
    HttpClientResponse httpClientResponse = await httpClientRequest.close();
    String future = await httpClientResponse.transform(utf8.decoder).join();
    Map decode = json.decode(future);
    callback(NavigationBaseBean.fromJson(decode));
  }

  // 获取首页列表数据，支持分页加载
  static void getHomePageData(int index, Callback callback) async {
    HttpClientRequest httpClientRequest = await HttpUtil.INTENCE
        .getHttpClient()
        .getUrl(Utils.uriTransform(Constant.HOME_LIST_URL + "/$index/json"));
    HttpClientResponse httpClientResponse = await httpClientRequest.close();
    String future = await httpClientResponse.transform(utf8.decoder).join();
    Map decode = json.decode(future);
    callback(NavigationBaseBean.fromJson(decode));
  }
}
