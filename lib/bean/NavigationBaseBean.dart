import 'package:flutterplayandroid/bean/BaseBean.dart';
import 'package:flutterplayandroid/util/LogUtil.dart';

class NavigationBaseBean extends BaseBean {
  static final String TAG = "NavigationBaseBean";

  int errorCode;
  String errorMsg;
  List<NavigationBean> data;

  NavigationBaseBean.fromJson(Map<String, dynamic> jsonMap) {
    if (jsonMap == null) {
      LogUtil.logW(TAG, "NavigationBaseBean.fromJson jsonMap is null");
      return;
    }
    errorMsg = jsonMap["errorMsg"];
    errorCode = jsonMap["errorCode"];
    var list = jsonMap["data"].map((it) => NavigationBean.fromJson(it)).toList();
    data = List<NavigationBean>.from(list);
  }
}

class NavigationBean {
  static final String TAG = "NavigationBean";

  List<NaviBean> articles;
  int cid;
  String name;

  NavigationBean.fromJson(Map<String, dynamic> jsonMap) {
    if (jsonMap == null) {
      LogUtil.logW(TAG, "NavigationBean.fromJson jsonMap is null");
      return;
    }
    this.cid = jsonMap["cid"];
    this.name = jsonMap["name"];
    var list = jsonMap["articles"].map((i) => NaviBean.fromJson(i)).toList();
    this.articles = List<NaviBean>.from(list);
  }
}

class NaviBean {
  static final String TAG = "NaviBean";

  String apkLink;
  int audit;
  String author;
  bool canEdit;
  int chapterId;
  String chapterName;
  bool collect;
  num courseId;
  String desc;
  String descMd;
  String envelopePic;
  bool fresh;
  num id;
  String link;
  String niceDate;
  String niceShareDate;
  String origin;
  String prefix;
  String projectLink;
  num publishTime;
  int realSuperChapterId;
  int selfVisible;
  num shareDate;
  String shareUser;
  int superChapterId;
  String superChapterName;
  List<dynamic> tags;
  String title;
  int type;
  int userId;
  int visible;
  int zan;

  NaviBean.fromJson(Map<String, dynamic> mapJson) {
    if (mapJson == null) {
      LogUtil.logW(TAG, "NaviBean.fromJson mapJson is null");
      return;
    }
    this.apkLink = mapJson["apkLink"];
    this.audit = mapJson["audit"];
    this.author = mapJson["author"];
    this.canEdit = mapJson["canEdit"];
    this.chapterId = mapJson["chapterId"];
    this.chapterName = mapJson["chapterName"];
    this.collect = mapJson["collect"];
    this.courseId = mapJson["courseId"];
    this.desc = mapJson["desc"];
    this.descMd = mapJson["descMd"];
    this.envelopePic = mapJson["envelopePic"];
    this.fresh = mapJson["fresh"];
    this.id = mapJson["id"];
    this.link = mapJson["link"];
    this.niceDate = mapJson["niceDate"];
    this.niceShareDate = mapJson["niceShareDate"];
    this.origin = mapJson["origin"];
    this.prefix = mapJson["prefix"];
    this.projectLink = mapJson["projectLink"];
    this.publishTime = mapJson["publishTime"];
    this.realSuperChapterId = mapJson["realSuperChapterId"];
    this.selfVisible = mapJson["selfVisible"];
    this.shareDate = mapJson["shareDate"];
    this.shareUser = mapJson["shareUser"];
    this.superChapterId = mapJson["superChapterId"];
    this.superChapterName = mapJson["superChapterName"];
    this.title = mapJson["title"];
    this.type = mapJson["type"];
    this.userId = mapJson["userId"];
    this.visible = mapJson["visible"];
    this.zan = mapJson["zan"];
//    this.tags = mapJson["tags"];
  }
}
/**
 * "apkLink":"",
    "audit":1,
    "author":"小编",
    "canEdit":false,
    "chapterId":528,
    "chapterName":"优秀的博客",
    "collect":false,
    "courseId":13,
    "desc":"",
    "descMd":"",
    "envelopePic":"",
    "fresh":false,
    "id":13333,
    "link":"https://juejin.im/user/587377ec61ff4b005c4d4189

    ",
    "niceDate":"2020-05-10 02:15",
    "niceShareDate":"2020-05-10 02:15",
    "origin":"",
    "prefix":"",
    "projectLink":"",
    "publishTime":1589048126000,
    "realSuperChapterId":0,
    "selfVisible":0,
    "shareDate":1589048126000,
    "shareUser":"",
    "superChapterId":0,
    "superChapterName":"",
    "tags":[

    ],
    "title":"承香墨影",
    "type":0,
    "userId":-1,
    "visible":0,
    "zan":0
 * */
