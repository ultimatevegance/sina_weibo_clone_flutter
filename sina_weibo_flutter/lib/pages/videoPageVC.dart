import 'package:flutter/cupertino.dart';

class VideoPageVC extends StatefulWidget {
  @override
  _VideoPageVCState createState() => _VideoPageVCState();
}

class _VideoPageVCState extends State<VideoPageVC> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('视频'),
      ),
    );
  }
}
