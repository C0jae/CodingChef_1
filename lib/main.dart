import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '피카츄',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[700],
      appBar: AppBar(
        title: Text('피카츄'),
        centerTitle: true,
        backgroundColor: Colors.amber[600],
        elevation: 0.0,
      ),
      body:  Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pika1.jpeg'),
                radius: 60.0,
              ),
            ),

            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),

            Text('NAME',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0
            ),
            ),

            SizedBox(
              height: 10.0,
            ),

            Text('피카츄',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 29.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Text('피카츄 POWER LEVEL',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0
            ),
            ),

            SizedBox(
              height: 10.0,
            ),

            Text('14',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 29.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Row(
              children: [
                Icon(Icons.check_circle_outline),

                SizedBox(
                  width: 10.0,
                ),

                Text('Lightning',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),),
              ],
            ),

            Row(
              children: [
                Icon(Icons.check_circle_outline),

                SizedBox(
                  width: 10.0,
                ),

                Text('Rush',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),),
              ],
            ),

            Row(
              children: [
                Icon(Icons.check_circle_outline),

                SizedBox(
                  width: 10.0,
                ),

                Text('Tail Attack',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),),
              ],
            ),

            SizedBox(
              height: 30.0,
            ),

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pika2.jpeg'),
                radius: 50.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}