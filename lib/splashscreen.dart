import 'package:flutter/material.dart';
import 'package:untitled4/CounterApp.dart';
import 'package:untitled4/GoldAppScreen.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override

  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
      seconds: 5
    ),(){

      Navigator.push(context, MaterialPageRoute(builder: (context)=> Counterapp ()));
    } );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('lib/assets/abcd.jpg'))
        ],
      ),),
    );
  }
}
