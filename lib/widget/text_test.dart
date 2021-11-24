import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text练习"),
        ),
        body: DefaultTextStyle(
          style: TextStyle(color: Colors.red, fontSize: 20),
          textAlign: TextAlign.start,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello world " * 2, textScaleFactor: 2.0, textAlign: TextAlign.center, style: TextStyle(backgroundColor: Colors.blue)),
              Text(
                "Hello world " * 10,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(backgroundColor: Colors.blue),
              ),
              Text.rich(TextSpan(children: [TextSpan(text: "Home: "), TextSpan(text: "https://flutterchina.club", style: TextStyle(color: Colors.blue))]))
            ],
          ),
        ),
      ),
    );
  }
}
