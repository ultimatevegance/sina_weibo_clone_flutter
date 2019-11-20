import 'package:flutter/cupertino.dart';

class MessagePageVC extends StatefulWidget {
  @override
  _MessagePageVCState createState() => _MessagePageVCState();
}

class _MessagePageVCState extends State<MessagePageVC> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('消息'),
      ),
    );
  }
}
