//crear una clase(objetivo:una ventana principal de tipo statelessWidget)
import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.data_usage_outlined),
      )),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.account_balance),
              onPressed: () {
                print("OK");
              }),
          IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                print("OK1");
              })
        ],
        title: Text("Lazara Yamila"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Lazara Yamila",
                style: TextStyle(color: Colors.deepPurple),
              ),
              accountEmail: Text(
                "ycastillo@gmail.com",
                style: TextStyle(color: Colors.deepPurple),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage('assets/images/wall-e.png'),
                  fit: BoxFit.fill,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Text(
                  "Y",
                  style: TextStyle(fontSize: 40.0, color: Colors.deepPurple),
                ),
              ),
            ),
            ListTile(
              title: Text("Ttem 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Item 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
