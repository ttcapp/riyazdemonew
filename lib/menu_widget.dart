import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final Function(String) onItemClick;

  const MenuWidget({Key? key, required this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _heightOnly=MediaQuery.of(context).size.height;
    double _widthOnly=MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: _heightOnly*0.045,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/image/avater1.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Riyaz Ahmed',
            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontSize: _widthOnly*0.06,
             ),
          ),
          SizedBox(
            height: 20,
          ),
          sliderItem('Friend Lists', Icons.people),
          sliderItem('Notification', Icons.notifications_active),
          sliderItem('List Show', Icons.list),
          sliderItem('Setting', Icons.settings),
          sliderItem('LogOut', Icons.arrow_back_ios)
        ],
      ),
    );
  }

  Widget sliderItem(String title, IconData icons) => ListTile(
      title: Text(
        title,
        style:
        TextStyle(color: Colors.black),
      ),
      leading: Icon(
        icons,
        color: Colors.black,
      ),
      onTap: () {
        onItemClick(title);
      });
}
