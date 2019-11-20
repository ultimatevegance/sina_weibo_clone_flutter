import 'package:flutter/cupertino.dart';

class DiscoverPageVC extends StatefulWidget {
  @override
  _DiscoverPageVCState createState() => _DiscoverPageVCState();
}

class _DiscoverPageVCState extends State<DiscoverPageVC> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('发现'),
      ),
    );
  }
}
