import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagramdemo/pages/home_page.dart';
import 'package:instagramdemo/pages/signup_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  bool isLogin = false;
  Timer? timer;


  @override
  void initState() {
    timer = Timer.periodic(Duration(milliseconds: 2000), (timer) {
      if(isLogin){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HoePage()));
      } else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignupPage()));
      }
    });
    super.initState();
  }
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image(
              height: 100,
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("from", style: TextStyle(color: Colors.grey),),
                Image(
                  height: 50,
                  image: AssetImage("assets/images/meta.png"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
