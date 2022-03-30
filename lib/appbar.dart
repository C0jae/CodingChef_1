import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
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
        title: Text('Appbar Icon Menu'),
        centerTitle: true,
        elevation: 0.0,
        
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shoppint cart button is clicked');
            },
          ),

          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
      
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       UserAccountsDrawerHeader(
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: AssetImage('assets/pika2.jpeg'),
      //         ),
      //         accountName: Text('피카츄'),
      //         accountEmail: Text('Pika@naver.com'),
      //         onDetailsPressed: () {
      //           print('arrow is clicked');
      //         },
      //         decoration: BoxDecoration(
      //           color: Colors.red[200],
      //           borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(40.0),
      //             bottomRight: Radius.circular(40.0),
      //           )
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/pika1.jpeg'),
              ),
              accountName: Text('피카츄'),
              accountEmail: Text('Pika@gmail.com'),
              onDetailsPressed: () {
                print('arrow icon is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                )
              )
            ),
          ],
        ),
      ),

    );
  }
}