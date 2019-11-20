import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sina_weibo_flutter/discoverPageVC.dart';
import 'package:sina_weibo_flutter/messagePageVC.dart';
import 'package:sina_weibo_flutter/myPageVC.dart';
import 'package:sina_weibo_flutter/videoPageVC.dart';
import 'homePage.dart';

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
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),title: Text('微博')),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.video_camera),title: Text('视频')),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),title: Text('发现')),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.mail),title: Text('消息')),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),title: Text('我')),
        ],
        activeColor: Colors.redAccent,
        inactiveColor: Colors.green,
      ),
      // ignore: missing_return
      tabBuilder: (context,index){
        switch(index) {
          case 0:
          return CupertinoTabView(builder: (context){
            return HomePageVC();
          },);
          case 1:
            return CupertinoTabView(builder: (context){
              return VideoPageVC();
            },);
          case 2:
            return CupertinoTabView(builder: (context){
              return DiscoverPageVC();
            },);
          case 3:
            return CupertinoTabView(builder: (context){
              return MessagePageVC();
            },);
          case 4:
            return CupertinoTabView(builder: (context){
              return MyPageVC();
            },);
        }
      },
    );
  }
}


