import 'package:flutter/material.dart';

class StudentDetails extends StatefulWidget {
  String text;
  String img;
   StudentDetails({Key? key, required this.text, required this.img}) : super(key: key);

  @override
  _StudentDetailsState createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Student Details"),
      ),


      body: Column(
        children: [
          Image.asset(widget.img),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.text,
              style: TextStyle(fontSize: 30,
                  color: Colors.lightBlueAccent),),
          ),
        ],
      ),
    );
  }
}
