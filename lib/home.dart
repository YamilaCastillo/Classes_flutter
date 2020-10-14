//crear una clase(objetivo:una ventana principal de tipo statelessWidget)
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
    );
  }
}
