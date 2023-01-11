import 'package:flutter/material.dart';
import 'package:instagramdemo/pages/signup_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Instagram", style: TextStyle(fontSize: 45),),
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
                      hintText: "Email",
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
                      hintText: "password",
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
                    child: Text("sign in"),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("husajbkcfaywetyao8d9osjdbva ",style: TextStyle(color: Colors.grey),),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>  SignupPage()));
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
}
