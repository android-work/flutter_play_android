class LogUtil{

  static logI(String tag,String log){
    _printLog("logI",tag,log);
  }

  static logD(String tag,String log){
    _printLog("logD",tag,log);
  }

  static logW(String tag,String log){
    _printLog("logW",tag,log);
  }

  static logE(String tag,String log){
    _printLog("logE",tag,log);
  }

  static _printLog(String s,String tag,String log){
    if(tag == null || tag.isEmpty){
      return;
    }
    StringBuffer sb = StringBuffer();
    sb.write(s+", ");
    sb.write(tag+", ");
    sb.write(log);
    print(sb.toString());
  }
}