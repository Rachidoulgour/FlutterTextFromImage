import 'package:flutter/material.dart';

class RecognizePage extends StatefulWidget {
  final String path;
  const RecognizePage({Key? key, required this.path}) : super(key: key);

  @override
  State<RecognizePage> createState() => _RecognizePageState();
}

class _RecognizePageState extends State<RecognizePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("recognize page")),);
  }
}