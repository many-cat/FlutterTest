import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrameTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('层叠布局')),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            fit: StackFit.expand, //未定位widget占满Stack整个空间
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.red,
                child: Text("Hello world", style: TextStyle(color: Colors.white)),
              ),
              Positioned(left: 18, child: Text("I am Jack")),
              Positioned(top: 18, child: Text("Your friend")),
            ],
          ),
        ),
      ),
    );
  }
}
