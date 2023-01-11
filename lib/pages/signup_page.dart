import 'package:flutter/material.dart';
import 'package:instagramdemo/pages/siginin_page.dart';
import 'package:spring/spring.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center   (
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _slideAnimation(500, 10, 0,
                    Text("Instagram", style: TextStyle(fontSize: 45)
                    )
                ),

                _slideAnimation(500, 10, 0,Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),

                    ),
                  ),
                )),

                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                      hintText: "password",
                      hintStyle: TextStyle(color: Colors.grey),

                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                      hintText: "confirm password",
                      hintStyle: TextStyle(color: Colors.grey),

                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text("sign up"),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("aaldiuhoakbyigshabdha",style: TextStyle(color: Colors.grey),),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>  SigninPage()));
                      },
                      child: Text("sign in"),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }


  SpringController? springController;
  Widget _slideAnimation(int delay,double y1, double y2, Widget child){
    return Spring.slide(
      springController: springController,
      slideType: SlideType.slide_in_top,
      withFade: true,
      cutomTweenOffset: Tween(begin: Offset(0,y1), end: Offset(0,y2)),
      delay: Duration(milliseconds: delay),
      child: child,
    );
  }
}
