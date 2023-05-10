import 'package:flutter/material.dart';

class ChangeText extends StatefulWidget {
  const ChangeText({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ChangeTextState();
  }
}

class _ChangeTextState extends State {
  TextEditingController _controller = TextEditingController();
  String _yeniYazi="Deneme Deneme";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("AppBar Text"),),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(_yeniYazi,
              style: TextStyle(fontSize: 18, color: Colors.red)),
              const TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(15),
                  hintText: "Herhangi bir şey yazın!",
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.grey
                ),
                autofocus:  true,
                cursorColor: Colors.black12,
              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  _yeniYazi = _controller.text;
                });
              }, child: const Text("Change Text"))
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}