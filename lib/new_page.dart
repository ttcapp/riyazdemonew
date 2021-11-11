import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riyaz_demo/page_one.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("New Page"),
        ),

        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all()
                      ),
                        child: Center(child: Text("Masud"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        child: Center(child: Text("Masud"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        child: Center(child: Text("Masud"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        child: Center(child: Text("Masud"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        child: Center(child: Text("Masud"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        child: Center(child: Text("Masud"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        child: Center(child: Text("Masud"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        child: Center(child: Text("Masud"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        child: Center(child: Text("Masud"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        child: Center(child: Text("Masud"))),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50,),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageOne()));

                },
                child: Text("Button 1"))

          ],
        ),

      ),
    );
  }
}
