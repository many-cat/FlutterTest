import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditTextTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EditTextState();
}

class _EditTextState extends State<EditTextTest> {
  final _unameController = TextEditingController();
  final _focusNode1 = FocusNode();
  final _focusNode2 = FocusNode();

  @override
  void initState() {
    _unameController.addListener(() {
      print(_unameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SwitchTest"),
        ),
        body: Column(children: [
          TextField(
            focusNode: _focusNode1,
            autofocus: true,
            decoration: InputDecoration(labelText: "用户名", hintText: "用户名或邮箱", prefixIcon: Icon(Icons.person)),
            cursorColor: Colors.grey,
            cursorRadius: Radius.circular(10),
            onChanged: _onChange,
          ),
          TextField(
            focusNode: _focusNode2,
            controller: _unameController,
            decoration: InputDecoration(labelText: '密码', hintText: '您的登录密码', prefixIcon: Icon(Icons.lock)),
            obscureText: true,
          ),
          ElevatedButton(
              onPressed: () {
                var focusNode = _focusNode2.hasFocus ? _focusNode1 : _focusNode2;
                FocusScope.of(context).requestFocus(focusNode);
              },
              child: Text('移动焦点')),
          ElevatedButton(
              onPressed: () {
                (_focusNode2.hasFocus ? _focusNode2 : _focusNode1).unfocus();
              },
              child: Text('隐藏软键盘'))
        ]),
      ),
    );
  }

  void _onChange(String value) {
    print(value);
  }
}
