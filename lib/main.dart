import 'package:flutter/material.dart';
import 'package:flutterbankui_app/TransactionScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          title: Text('Transactions',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),

        body: TransactionScreen(),
      ),
    );
  }
}
