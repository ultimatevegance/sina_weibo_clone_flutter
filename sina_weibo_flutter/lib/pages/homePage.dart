import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageVC extends StatefulWidget {
  @override
  _HomePageVCState createState() => _HomePageVCState();
}

class _HomePageVCState extends State<HomePageVC> with SingleTickerProviderStateMixin{
 var titleTabList = ["推荐","关注"];
 List<Widget> tabLists;
 TabController _tabController;
 var tabbar;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this,length: titleTabList.length);
    tabLists = getTabs();
    tabbar =

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CupertinoNavigationBar(
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child:  Image.asset("assets/images/navigationbar_icon_camera@3x.png",width: 30,height: 30,),
          onPressed: () {
          },
        ),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child:  Image.asset("assets/images/navigationbar_icon_compose@3x.png",width: 30,height: 30,),
          onPressed: () {
          },
        ),
      )  ,
    );
  }

 List<Widget> getTabs() {
   return titleTabList.map(
       (item) => Text(
         '$item',style: TextStyle(fontSize: 15),
       )
   ).toList();
 }

}
