import 'package:flutter/material.dart';

/// 延迟操作的回调
typedef void DelayOperatedCallback();

class TimerUtil {
  /// 定义一个延迟操作工具方法
  static Future delayOperated(
      {int days = 0,
      int hours = 0,
      int minutes = 0,
      int seconds = 0,
      int milliseconds = 0,
      int microseconds = 0,
      DelayOperatedCallback callback}) async {
    return await Future.delayed(
      Duration(
          days: days,
          hours: hours,
          minutes: minutes,
          seconds: seconds,
          milliseconds: milliseconds,
          microseconds: microseconds),
        callback
    );
  }
}
