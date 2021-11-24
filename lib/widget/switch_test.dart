import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SwitchAndCheckBoxState();
}

class _SwitchAndCheckBoxState extends State<SwitchTest> {
  var _switchSelected = true;
  var _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SwitchTest"),
        ),
        body: Wrap(
          children: [
            Switch(
                activeColor: Colors.red,
                value: _switchSelected,
                onChanged: (value) {
                  setState(() {
                    _switchSelected = value;
                  });
                }),
            Checkbox(
                value: _checkboxSelected,
                activeColor: Colors.red,
                onChanged: (check) {
                  setState(() {
                    _checkboxSelected = check!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
