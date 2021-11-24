import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text练习"),
        ),
        body: Wrap(
          children: [
            Image.asset(
              "images/avatar.png",
              width: 100,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
            ),
            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 250,
              height: 100,
              repeat: ImageRepeat.repeatX,
            )
          ],
        ),
      ),
    );
  }
}
