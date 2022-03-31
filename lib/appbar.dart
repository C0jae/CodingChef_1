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
      
      drawer: Drawer(
        child: ListView(
          // 여백 없애기
          padding: EdgeInsets.zero,
          children: [
            // 메뉴 리스트에 프로필 정보를 나타내기
            UserAccountsDrawerHeader(
              // 프로필 사진 설정, CircleAvatar : 원형의 이미지로 적용
              currentAccountPicture: CircleAvatar(
                // 적용 이미지의 경로 설정
                backgroundImage: AssetImage('assets/pika1.jpeg'),
              ),
              // 주 프로필 사진 외의 사진 추가(여러개 첨부가 가능하므로 리스트[]를 가지게 된다.)
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/pika2.jpeg'),
                )
              ],

              accountName: Text('피카츄'),            // 프로필 이름
              accountEmail: Text('Pika@naver.com'), // 프로필 이메일

              // 오른쪽 하단 화살표 버튼 생성
              onDetailsPressed: () {
                print('arrow is clicked');
              },

              // UserAccountsDrawerHeader의 스타일 설정
              decoration: BoxDecoration(  // 박스 설정
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )
              ),
            ),

            // 리스트 타일 설정
            ListTile(
              leading: Icon(Icons.home,
                color: Colors.grey[850]),
              title: Text('home'),
              onTap: () {   // 클릭시 기능구현
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),

            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850]),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),

            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850]),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),

      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       UserAccountsDrawerHeader(
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: AssetImage('assets/pika1.jpeg'),
      //         ),
      //         accountName: Text('피카츄'),
      //         accountEmail: Text('Pika@gmail.com'),
      //         onDetailsPressed: () {
      //           print('arrow icon is clicked');
      //         },
      //         decoration: BoxDecoration(
      //           color: Colors.red[200],
      //           borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(30.0),
      //             bottomRight: Radius.circular(30.0),
      //           )
      //         )
      //       ),
      //     ],
      //   ),
      // ),

    );
  }
}