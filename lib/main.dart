import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //json데이터를 불러오기 위해 필요한 메서드를 만들어줍니다.
  static Future loadJson() async {
    //json파일을 불러오기 위해 rootBundle을 사용합니다.
    // json경로에 접급을 합니다.
    final String response = await rootBundle.loadString("lib/users.json");
    //json.Decode를 사용하여 json파일을 Map형태로 변환합니다.
    //json파일을 Map형태로 변환하면 key와 value로 데이터를 사용할 수 있습니다.
    final data = json.decode(response);
    //data를 반환합니다.
    //users만 불러오기 위해 data['users']를 사용합니다.
    return data['users'];
  }

  //이 메소드를 바로 변수로 사용할 수 있도록 Future userList를 만들어줍니다.
  Future userList = loadJson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // 기본 스캐폴드 위젯
        appBar: AppBar(
          // 상단 앱바
          backgroundColor: Colors.deepPurple, // 앱바 배경색 설정 (진보라색)
          title: const Text('플러터 개발자 도전기', // 앱바 제목 설정
              style: TextStyle(
                // 제목 텍스트 스타일 설정
                color: Colors.white, // 흰색 글씨색
              )),
          centerTitle: true, // 제목 가운데 정렬
          elevation: 4, // 앱바 그림자 효과 설정
        ),
        body: Container(
          // 본문 컨테이너
          // FutureBuilder 위젯을 사용하여 userList를 불러옵니다.
          child: FutureBuilder(
              future: userList,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  // snapshot.hasdata를 사용하여 데이터를 불러옵니다.
                  // ListView.builder를 사용하여 데이터를 리스트로 불러옵니다.
                  // itemcount는 데이터의 길이만큼 불러옵니다.
                  // itemBuilder를 사용하여 데이터를 불러옵니다.
                  // snapshot.data[index]['id']를 사용하여 id를 불러옵니다.

                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return Container(
                            padding: const EdgeInsets.all(12),
                            child: Text(
                                "${snapshot.data[index]['id']} : ${snapshot.data[index]['name']}"));
                      });
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text('데이터를 불러오는데 실패했습니다.'),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                    ),
                  );
                }
              }),
        ));
  }
}
