import 'package:flutter/material.dart';

class SecondView extends StatefulWidget {
  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.deepPurple,
        title: const Text('플러터 개발자 도전기',
            style: TextStyle(
              color: Colors.white,
            )),
        centerTitle: true,
        elevation: 4,
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.deepPurple,
        child: const Text("여기는 두번째 창"),
      )),
    );
  }
}
