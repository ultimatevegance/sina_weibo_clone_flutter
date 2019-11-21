import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageVC extends StatefulWidget {
  @override
  _HomePageVCState createState() => _HomePageVCState();
}

class _HomePageVCState extends State<HomePageVC> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('微博'),
      ),
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child:  Image.asset("assets/images/navigationbar_icon_camera@3x.png",width: 30,height: 30,),
          onPressed: () {
          },
        ),
        middle: TabBar(tabs: <Widget>[
          new Tab(text: "关注",),
          new Tab(text: "推荐",)
        ],),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child:  Image.asset("assets/images/navigationbar_icon_compose@3x.png",width: 30,height: 30,),
          onPressed: () {
          },
        ),
      ) ,
    );
  }
}
