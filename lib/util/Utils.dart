import '../Constant.dart';
import 'LogUtil.dart';

class Utils{
  static final String TAG = "Utils";

  // 将String的url转换成Uri
  static Uri uriTransform(String url){
    url = Constant.BASE_URL + url;
    LogUtil.logI(TAG, "request url:"+url);
    var uri = Uri.parse(url);
    return uri;
  }
}