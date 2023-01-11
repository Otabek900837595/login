import 'package:flutter/material.dart';

class HoePage extends StatefulWidget {
  const HoePage({Key? key}) : super(key: key);

  @override
  State<HoePage> createState() => _HoePageState();
}

class _HoePageState extends State<HoePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("welcome to instagram ", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
