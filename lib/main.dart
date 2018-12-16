import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text('Hello World Flutter'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.monetization_on),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(color: Colors.lightBlue),
            ),
            Text("Item 1"),
            Text("Item 2"),
            Text("Item 3"),
            Text("Item 4"),
            Text("Item 5"),
            Text("Item 6")
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("Search"), icon: Icon(Icons.search))
        ],
        fixedColor: Colors.redAccent,
        currentIndex: 1,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add
        ),
        onPressed: () {
          print("Floating Action Button tapped");
        },
      ),
    ),
  ));
}
