
import 'package:flutter/material.dart';
import 'package:riyaz_demo/model/student_model.dart';

class DemoPage extends StatefulWidget {
  String strText;
  StudentDetails stdObj;

   DemoPage({Key? key, required this.strText, required this.stdObj}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Demo Page"),
        ),
        body: Column(
          children: [
            Text(widget.strText)
          ],
        ),
      ),
    );
  }
}
