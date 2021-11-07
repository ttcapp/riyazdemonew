import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:riyaz_demo/std_details.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}
List<String> stdName=[
  "Masum",
  "Masud",
  "Jakariya",
  "Jasim",
  "Imran",
  "Bisnu",
  "Cinmoy"
];


List<String> stdDetails=[
  "Masum. I am 25 years old",
  "Masud. I am 26 years old",
  "Jakariya. I am 27 years old",
  "Jasim. I am 28 years old",
  "Imran. I am 29 years old",
  "Bisnu. I am 30 years old",
  "Cinmoy. I am 31 years old"
];


List<String> stdImg=[
  "assets/images/icon.png",
  "assets/images/image 2.png",
  "assets/images/image 3.png",
  "assets/images/logo.png",
  "assets/images/logo.png",
  "assets/images/logo.png",
  "assets/images/logo.png"
];

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];


class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Page"),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlayAnimationDuration: Duration(milliseconds: 100),
              autoPlay: true,
            ),
            items: imgList
                .map((item) => Container(
              child: Center(
                  child:
                  Image.network(item, fit: BoxFit.cover, width: 1000)),
            ))
                .toList(),
          ),


          Expanded(
              child:ListView.builder(
                itemCount: stdName.length,
                  itemBuilder: (context,index){
                    return ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>StudentDetails( text: stdDetails[index],
                                img: stdImg[index],)));
                        },
                        child: Text(stdName[index]
                        ),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
