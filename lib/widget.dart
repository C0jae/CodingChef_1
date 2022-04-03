import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'widget',

      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,

      body: SafeArea(
        child: Center(
          child: Column(
            // 아래서부터 쌓아올리기
            //verticalDirection: VerticalDirection.up,

            // container박스를 세로축의 중앙에 위치시키며, 위아래 통제권은 같지 않는다.
            //mainAxisSize: MainAxisSize.min,

            // 같은 간격으로 벌리기
            // mainAxisAlignment: MainAxisAlignment.spaceAround,

            // 양 끝에 위치시키며 일정한 각격 유지
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,

            // 가로축으로 끝까지 늘리기(width가 필요 없어진다.)
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),

              SizedBox(
                height: 30,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}