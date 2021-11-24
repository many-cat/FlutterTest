import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinearTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ConstraintsTest')),
        body: Container(
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                color: Colors.white,
                child: Container(
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Text("hello world"), Text("I am Jack")
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("hello world"), Text("I am Jack")],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("hello world"), Text("I am Jack")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                textDirection: TextDirection.rtl,
                children: [Text("hello world"), Text("I am Jack")],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: VerticalDirection.up,
                children: [
                  Text(
                    "hello world",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("I am Jack")
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text("hello world"), Text("I am Jack")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
