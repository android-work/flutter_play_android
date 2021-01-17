import 'dart:io';

import 'package:flutterplayandroid/bean/BaseBean.dart';

typedef void Callback(BaseBean baseBean);
/// HttpClient请求框架
class HttpUtil {
  static final String TAG = "HttpUtil";

  HttpUtil._(){
    _initHttp();
  }

  static final HttpUtil INTENCE = HttpUtil._();

  HttpClient _httpClient;

  // 创建HttpClient对象
  void _initHttp(){
    _httpClient = HttpClient();
  }

  HttpClient getHttpClient() => _httpClient;
}
