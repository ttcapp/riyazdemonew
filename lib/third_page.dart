import 'package:flutter/material.dart';
import 'package:riyaz_demo/my_home_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}
//global variable
String _email="riyazahmed2930@gmail.com";
String _password="12345678";
final _formKey=GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
bool passVisi=true;
//global variable

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Padding(
            padding:  EdgeInsets.only(
                top: h*0.08, left: w*0.04,
                right: w*0.04, bottom: h*0.08),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text("Log in", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                TextFormField(
                  controller: emailController,
                  validator: (text){
                    if(text == null || text.isEmpty){
                      return "Email is empty";
                    }
                    else if (text != _email){
                      return "Incorrect Email";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(color: Colors.blue),
                    contentPadding: EdgeInsets.all(8),
                    focusColor: Colors.purple,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    suffixIcon: Icon(Icons.attach_email, color: Colors.blue,),

                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  obscureText: passVisi,
                  controller: passwordController,
                  validator: (text){
                    if(text == null || text.isEmpty){
                      return "pasword is empty";
                    }
                    else if(text.length<=6){
                      return "Password should be atlast 6 character";
                    }
                    else if (text != _password){
                       return "Incorrect Password";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(color: Colors.blue),
                    contentPadding: EdgeInsets.all(8),
                    focusColor: Colors.purple,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    suffixIcon:
                    InkWell(
                      onTap: (){
                        setState(() {
                          if(passVisi== true)
                          passVisi=false;
                          else
                            passVisi=true;
                        });
                      },
                        child: Icon(Icons.remove_red_eye, color: Colors.blue)),

                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        if(emailController.text== _email){
                          if(passwordController.text == _password){
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            =>MyHomePage()));
                          }
                        }
                      }
                      },
                    child: Text("Log in")),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
