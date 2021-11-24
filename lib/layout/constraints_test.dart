import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstraintsTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ConstraintsTest'),
          actions: [
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            UnconstrainedBox(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 50),
              child: Container(
                height: 10,
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
            Wrap(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 80, height: 80),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                )
              ],
            ),
            Wrap(
              children: [
                ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 80, maxHeight: 80),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 300, maxHeight: 300),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.green),
                      ),
                    )),
                ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 80, minHeight: 80),
                  child: UnconstrainedBox(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 40, minHeight: 40),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                    ),
                  ),
                )
              ],
            ),
            UnconstrainedBox(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text("xx"*30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
