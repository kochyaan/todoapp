import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counterapp extends StatefulWidget {
  const Counterapp({super.key});

  @override
  State<Counterapp> createState() => _CounterappState();
}

class _CounterappState extends State<Counterapp> {
  num counternumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade800,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Text(
          'COUNTER APP',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 5,
              wordSpacing: 5
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Container(
              color: Colors.black,
              height: 0.5,
            )),
      ),

      // Floating action button with reset confirmation dialog
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show confirmation dialog when reset button is pressed
          Get.defaultDialog(
            title: 'Warning',
            content: Text('Are you want to reset the counter?',),

            actions: [
              TextButton(
                onPressed: () {
                  Get.back(); // Close dialog without resetting
                },
                child: Text('No'),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    counternumber = 0; // Reset the counter if "Yes" is pressed
                  });
                  Get.back(); // Close dialog after resetting
                },
                child: Text('Yes'),
              ),
            ],
          );
        },
        backgroundColor: Colors.white10,
        child: Icon(Icons.refresh, color: Colors.white),

      ),

      // Main body of the app
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Image(
                    image: AssetImage('lib/assets/abc.png'),
                    height: 190,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                '$counternumber', // Display the current counter value
                style: TextStyle(
                  fontSize: 100, // Larger font size for the number
                  fontWeight: FontWeight.normal,
                  color: Colors.white, // White text color
                  shadows: [
                    Shadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 10,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            // Increment button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counternumber++;
                    });
                  },
                  child: Text(
                    'Increment',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Rounded button
                    ),
                    backgroundColor: Colors.white10,
                    padding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Decrement button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (counternumber > 0) {
                        counternumber--; // Decrement the counter if greater than 0
                      }
                    });
                  },
                  child: Text(
                    'Decrement',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Rounded button
                    ),
                    backgroundColor: Colors.white10,
                    padding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 15), // Padding
                  ),
                ),
              ],
            ),
        
            //   Spacer(),
            SizedBox(height: 0),
            Padding(
        
              padding: EdgeInsets.only(top: 70,),
              child: Text(
                'Developed by Noman Ahmad',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}