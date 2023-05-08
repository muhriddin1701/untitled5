import 'package:flutter/material.dart';
import 'package:untitled5/home_page.dart';
import 'package:untitled5/third_page.dart';

class SecondPage extends StatefulWidget {
  static const String id = "second_page";

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomePage.id);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ThirdPage.id);
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 150,
            color: Colors.green,
          ),
          Container(
            height: 80,
            width: 150,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            width: 150,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 150,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
