import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),

      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),

      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('show me'),
        onPressed: () {
          Scaffold.of(context)
          .showBottomSheet((context) => 
            Text('Hello', 
            textAlign: TextAlign.center, 
            style: TextStyle(
              color: Colors.white
            ),
            ),
            backgroundColor: Colors.teal,
            );
        },
      ),
    );
  }
}

