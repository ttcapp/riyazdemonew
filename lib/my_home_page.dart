import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:riyaz_demo/demo_page.dart';
import 'package:riyaz_demo/list_view.dart';
import 'package:riyaz_demo/menu_widget.dart';
import 'package:riyaz_demo/model/student_model.dart';
import 'package:riyaz_demo/second_page.dart';
import 'package:riyaz_demo/third_page.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

String imgSrcAvatar="https://previews.123rf.com/images/pandavector/pandavector1704/pandavector170406094/76736955-girl-icon-flat-single-avatar-peaople-icon-from-the-big-avatar-flat-.jpg";
String btnText1= "Button One";
GlobalKey<SliderMenuContainerState> _key =
new GlobalKey<SliderMenuContainerState>();
String title= "Home";
String data = "This is a data";
StudentDetails stdDetails1= StudentDetails(
    "Riyajul", "101", "Gopalganj", "01751285853", "21");
StudentDetails stdDetails2= StudentDetails(
    "Momin", "102", "Ghonapara", "017000000", "25");

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    title = "Home";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;

    return Scaffold(
      body:
      SliderMenuContainer(
        appBarColor: Colors.teal,
        key: _key,
        sliderMenuCloseSize: 0,
        title: Text("Profile",style: TextStyle(color: Colors.white,
            fontSize: width*0.055,fontWeight: FontWeight.w800),),
        shadowColor: Colors.transparent,
        drawerIconColor: Colors.white,
        drawerIconSize: width*0.08,
        //slideDirection: Slider.RIGHT_TO_LEFT,
        //appBarPadding: const EdgeInsets.only(top: 10),
        sliderMenuOpenSize: 300,
        appBarHeight: 100,
        appBarPadding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        sliderMenu:
        MenuWidget(
          //  onProfilePictureClick: () {},
          onItemClick: (title) {
            _key.currentState!.closeDrawer();
            setState(() {
              title = title;
              if(title=="Friend Lists")
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              }
              else if(title=="Setting")
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                );
              }
              else if(title=="List Show")

              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewPage()),
                );
              }
              else if(title=="LogOut")
              {

              }
              else if(title=="Notification")
              {

              }
            });
          },
        ),
        sliderMain:
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/image 3.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black12.withOpacity(0.2), BlendMode.dstATop
                  )
              )
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:  width*0.25,
                      width: width*0.25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(avatarSrc),
                          fit: BoxFit.fitHeight,
                        ),
                        border: Border.all(width: 3,
                            color: Colors.deepOrange),
                        borderRadius: BorderRadius.all(
                            Radius.circular(180)
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: width*0.025,
                          ),
                          Column(
                            children: [
                              Text("378", style:
                              TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: width*0.055,
                                  color: Colors.black
                              ),),
                              Text("Posts"),
                            ],
                          ),
                          SizedBox(
                            width: width*0.025,
                          ),
                          Column(
                            children: [
                              Text("3.5K", style:
                              TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: width*0.055,
                                  color: Colors.black
                              ),),
                              Text("Follower"),
                            ],
                          ),
                          SizedBox(
                            width: width*0.025,
                          ),
                          Column(
                            children: [
                              Text("100", style:
                              TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: width*0.055,
                                  color: Colors.black
                              ),),
                              Text("Flowing"),
                            ],
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 4, left: 24, right: 24, bottom: 4
                                ),
                                child: Text("Message"),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 4, left: 4, right: 4, bottom: 4
                                ),
                                child: Icon(Icons.account_circle, size: 16),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              InkWell(
                onDoubleTap: (){
                  setState(() {
                    btnText1="Button One";
                  });
                },
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        btnText1="Button Pressed";
                      });
                    },
                    child: Text(btnText1)
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DemoPage(strText: data,)));
                  },
                  child: Text("Demo Page"),
              ),
            ],

          ),
        ),
      ),
    );
  }
}