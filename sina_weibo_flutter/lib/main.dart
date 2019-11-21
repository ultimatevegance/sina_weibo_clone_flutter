import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sina_weibo_flutter/pages/discoverPageVC.dart';
import 'package:sina_weibo_flutter/pages/messagePageVC.dart';
import 'package:sina_weibo_flutter/pages/myPageVC.dart';
import 'package:sina_weibo_flutter/pages/videoPageVC.dart';
import 'pages/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: IndexTab(),
    );
  }
}

class IndexTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: new Image.asset(
                "assets/images/tabbar_home@3x.png",
                width: 30,
                height: 30,
              ),
              activeIcon: new Image.asset(
                "assets/images/tabbar_home_selected@3x.png",
                width: 30,
                height: 30,
              ),
              title: Text('微博')),
          BottomNavigationBarItem(
              icon: new Image.asset(
                "assets/images/tabbar_video@3x.png",
                width: 30,
                height: 30,
              ),
              activeIcon: new Image.asset(
                "assets/images/tabbar_video_selected@3x.png",
                width: 30,
                height: 30,
              ),
              title: Text('视频')),
          BottomNavigationBarItem(
              icon: new Image.asset(
                "assets/images/tabbar_discover@3x.png",
                width: 30,
                height: 30,
              ),
              activeIcon: new Image.asset(
                "assets/images/tabbar_discover_selected@3x.png",
                width: 30,
                height: 30,
              ),
              title: Text('发现')),
          BottomNavigationBarItem(
              icon: new Image.asset(
                "assets/images/tabbar_message_center@3x.png",
                width: 30,
                height: 30,
              ),
              activeIcon: new Image.asset(
                "assets/images/tabbar_message_center_selected@3x.png",
                width: 30,
                height: 30,
              ),
              title: Text('消息')),
          BottomNavigationBarItem(
              icon: new Image.asset(
                "assets/images/tabbar_profile@3x.png",
                width: 30,
                height: 30,
              ),
              activeIcon: new Image.asset(
                "assets/images/tabbar_profile_selected@3x.png",
                width: 30,
                height: 30,
              ),
              title: Text('我')),
        ],
        activeColor: Colors.black,
        inactiveColor: Colors.black,
      ),
      // ignore: missing_return
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return HomePageVC();
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return VideoPageVC();
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return DiscoverPageVC();
              },
            );
          case 3:
            return CupertinoTabView(
              builder: (context) {
                return MessagePageVC();
              },
            );
          case 4:
            return CupertinoTabView(
              builder: (context) {
                return MyPageVC();
              },
            );
        }
      },
    );
  }
}
