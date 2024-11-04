import 'package:flutter/material.dart';
class Goldapp extends StatefulWidget {
  const Goldapp({super.key});

  @override
  State<Goldapp> createState() => _GoldappState();
}

class _GoldappState extends State<Goldapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text('Gold App'),
        centerTitle:true,
      ),
        body: Column(children: [
          Container(
        padding:EdgeInsets.only(left: 20),
        margin: EdgeInsets.only(left: 40,right: 40,top: 20),
         )
         ],
      ),
    );
  }
}
