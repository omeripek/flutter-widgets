import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Flutter!"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.mail)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person))
        ],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu),),
        centerTitle: true,
        toolbarHeight: 75,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.blue[300],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: FloatingActionButton.small(
          onPressed: () {},
          heroTag: "Test1",
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
          ),
        //body: const Center(child: Text("Merhaba Flutter!", style: TextStyle(fontSize: 38, color: Colors.red))),
        body: 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.yellow, width: 100, height: 200,
            child: const Text("Test Ömer", textScaleFactor: 2),
            ),
            Container(color: Colors.red, width: 100, height: 200),
            Container(color: Colors.grey, width: 100, height: 200),
            Container(
              width: 140,
              height: 200,
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                boxShadow:
                const [BoxShadow(
                  color: Colors.purple,
                  spreadRadius: 10,
                  blurRadius: 10
                )
                ],
              ),
              transform: Matrix4.rotationZ(0.1),
              child: const Text("Ömer Test",
                textScaleFactor: 2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      
        drawer: Drawer(
          child: ListView(
            children: const <Widget> [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Test',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                title: Text('Menü 1'),
              ),
              ListTile(
                title: Text('Menü 2'),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
                label: "Anasayfa",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Arama",
                icon: Icon(Icons.search)
              ),
              BottomNavigationBarItem(
                label: "Profil",
                icon: Icon(Icons.account_circle)
              ),
          ],
          onTap: (int indexOfItem) {} 
        ),
      );
  }
}