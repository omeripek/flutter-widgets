import 'package:flutter/material.dart';

class TextfieldUygulamasi extends StatefulWidget {
  const TextfieldUygulamasi({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TextfieldUygulamasi();
  }
}

class _TextfieldUygulamasi extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("TextField Uygulaması"),),
        body: Container(
          padding: const EdgeInsets.only(left: 50, right: 50),
          width: double.maxFinite,
          height: 150,
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
            children:  const [
              Text("Test Text Field", style: TextStyle(fontSize: 18, color: Colors.red),),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                  contentPadding: EdgeInsets.all(20),
                  hintText: "Placeholder",
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.grey
                ),
                autofocus: true,
                cursorColor: Colors.black12,
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}