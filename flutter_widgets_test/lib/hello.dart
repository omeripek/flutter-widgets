import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello Flutter!")),
      body: const Center(child: Text("Merhaba Flutter!", style: TextStyle(fontSize: 38, color: Colors.red))),
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