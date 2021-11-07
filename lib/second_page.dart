import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}


 String avatarSrc= "https://upload.wikimedia.org/wikipedia/commons/9/94/William_%22Mo%22_Cowan.jpg";
double conHeight=50;
double conWidth=50;

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Second Page"),
      ),

      body: Column(
        children: [
          
          InkWell(
            onDoubleTap: (){
              setState(() {
                conHeight=50;
                conWidth=50;
              });
            },
            onTap: (){
              setState(() {
                conHeight=200;
                conWidth=200;
              });
              },
            child: AnimatedContainer(
              height: conHeight,
                width: conWidth,
                duration: Duration(milliseconds: 3000),
            child: Image.network(avatarSrc)),
          ),
        ],
      )
    );
  }
}

