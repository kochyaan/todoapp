import 'package:flutter/material.dart';
class Onbordingscreen extends StatefulWidget {
  const Onbordingscreen({super.key});

  @override
  State<Onbordingscreen> createState() => _OnbordingscreenState();
}

class _OnbordingscreenState extends State<Onbordingscreen> {
  Widget pageBuilder (String image, String text) {
    return Column(
      children: [
        Image.asset('ADDRESS'),
        Text ('Data'),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(children: [
          // 1st Page

          //2nd Page
        ],)
      ],),
    );
  }
}
