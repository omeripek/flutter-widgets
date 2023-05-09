import 'package:flutter/material.dart';

class ChangeText extends StatefulWidget {
  const ChangeText({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ChangeTextState();
  }
}

class _ChangeTextState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("AppBar Text"),),
        body: Container(
          child: Column(
            children: [
              Text("Deneme"),
              TextField(),
              ElevatedButton(onPressed: () {}, child: Text("Change Text"))
            ],
          ),
        ),
      ),
    );
  }
}