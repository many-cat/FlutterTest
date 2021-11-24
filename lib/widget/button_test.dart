import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text练习"),
        ),
        body: Wrap(
          children: [
            ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.send), label: Text('normal')),
            TextButton(onPressed: () {}, child: Text('Submit')),
            OutlinedButton(onPressed: () {}, child: Text('normal')),
            IconButton(onPressed:  () {}, icon: Icon(Icons.thumb_up)),
          ],
        ),
      ),
    );
  }
}
