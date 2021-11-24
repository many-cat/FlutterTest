import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text练习"),
        ),
        body: Wrap(
          children: [
            Text("\uE03e \uE237 \uE287", style: TextStyle(fontFamily: "MaterialIcons", color: Colors.blue, fontSize: 24)),
            Icon(Icons.accessible, color: Colors.green),
            Icon(Icons.error, color: Colors.green),
            Icon(Icons.fingerprint, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
