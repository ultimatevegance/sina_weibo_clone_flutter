import 'package:flutter/cupertino.dart';

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
    );
  }
}
