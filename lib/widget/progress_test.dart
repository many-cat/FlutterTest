import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProgressTestState();
}

class _ProgressTestState extends State<ProgressTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SwitchTest"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              height: 10,
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            LinearProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation(Colors.blue),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Wrap(
              spacing: 10,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                  ),
                ),
                CircularProgressIndicator(
                  value: 0.5,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
