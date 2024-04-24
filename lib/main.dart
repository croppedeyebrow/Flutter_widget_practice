import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
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
  late SharedPreferences _prefs; // SharedPreferences를 사용하기 위한 변수
  String _username = ""; // 사용자 이름을 저장할 변수
  final TextEditingController _usernameController =
      TextEditingController(); // 사용자 이름을 입력받기 위한 컨트롤러

  @override
  void initState() {
    super.initState();
    _initPrefs();
    // 앱이 초기화될 때 사용자 이름을 가져오는 메서드 호출
  }

  _initPrefs() async {
    _prefs = await SharedPreferences.getInstance(); // SharedPreferences 초기화
    _getUsername(); // 사용자 이름 가져오는 메서드 호출
  }

  _saveUsername() {
    setState(() {
      _username = _usernameController.text; // 입력된 사용자 이름을 변수에 저장
      _prefs.setString(
          "currentUsername", _username); // SharedPreferences에 사용자 이름 저장
    });
  }

  _getUsername() async {
    _prefs = await SharedPreferences.getInstance(); // SharedPreferences 초기화
    setState(() {
      _username = _prefs.getString("currentUsername") ??
          ""; // SharedPreferences에서 사용자 이름 가져오기
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          '플러터 개발자 도전기',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 4,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text("현재 사용자 이름 : $_username"), // 현재 사용자 이름 표시
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _usernameController,
                textAlign: TextAlign.left,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: '사용자 이름을 입력하세요',
                ),
              ),
            ),
            TextButton(
              onPressed: _saveUsername,
              child: const Text("사용자 이름 저장하기"), // 사용자 이름 저장 버튼
            ),
          ],
        ),
      ),
    );
  }
}
