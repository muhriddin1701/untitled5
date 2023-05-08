import 'package:flutter/material.dart';
import 'home_page.dart';

class ThirdPage extends StatefulWidget {
  static const String id = "third_page";

  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Column 2"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomePage.id);
          },

          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Container(
        width: 300,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 60,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 60,
              width: 100,
              color: Colors.yellow,
            ),
            Container(
              height: 60,
              width: 100,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
