import 'package:flutter/material.dart';

class StatefulSayfa extends StatefulWidget{
  const StatefulSayfa({super.key});

  @override
  State<StatefulWidget> createState() {
   return StatefulSayfaState();
  }
}

class StatefulSayfaState extends State<StatefulSayfa> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Deneme"),),
        body: const Center(
            child: Text("Stateful Sayfa ", style: TextStyle(fontSize: 26),
            )
        ),
      ),
      debugShowCheckedModeBanner: false,

    );
  }
}