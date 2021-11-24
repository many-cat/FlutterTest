import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RelativeTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('层叠布局')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey,
              child: Align(
                widthFactor: 2,
                heightFactor: 2,
                alignment: Alignment(2, 0),
                child: FlutterLogo(size: 60),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Align(
                widthFactor: 2,
                heightFactor: 2,
                alignment: FractionalOffset(1, 0.5),
                child: FlutterLogo(size: 60),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text('xxx'),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                widthFactor: 1,
                heightFactor: 1,
                child: Text('xxx'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
