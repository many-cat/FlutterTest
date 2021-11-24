import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('弹性布局')),
        body: Column(
          children: [
            Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      height: 30,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                      height: 30,
                    )),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 100,
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.red,
                            height: 30,
                          )),
                      Spacer(flex: 1),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                            height: 30,
                          ))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
