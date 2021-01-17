import 'package:dio/dio.dart';

/// Dio网络请求框架
class DioUtil {
  DioUtil._(){
    _initDio();
  }

  static final DioUtil INTENCE = DioUtil._();

  Dio _dio;

  void _initDio(){
    _dio = Dio();
  }

  Dio getDio() => _dio;
}
