import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',

      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),

      body: Center(
        child: ElevatedButton(
          child: Text('Go to the Second page'),
          onPressed: () {
            Navigator.push(context2, MaterialPageRoute(
              builder: (context) => SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),

      body: Center(
        child: ElevatedButton(
          child: Text('Go to the First page'),
          onPressed: () {
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}