import 'package:flutter/cupertino.dart';

class MyPageVC extends StatefulWidget {
  @override
  _MyPageVCState createState() => _MyPageVCState();
}

class _MyPageVCState extends State<MyPageVC> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('我的'),
      ),
    );
  }
}
