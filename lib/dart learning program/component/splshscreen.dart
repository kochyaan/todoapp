import 'package:flutter/material.dart';
import 'package:untitled4/dart%20learning%20program/component/onbordingscreen.dart';
class Splshscreen extends StatefulWidget {
  const Splshscreen({super.key});

  @override
  State<Splshscreen> createState() => _SplshscreenState();
}

class _SplshscreenState extends State<Splshscreen> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 3),()
    {Navigator.push(context, MaterialPageRoute(builder: (context)=>Onbordingscreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('lib/assets/dart1.jpg'),)
        ],
      ),),backgroundColor: Colors.black,
    );
  }
}
