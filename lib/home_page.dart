import 'package:flutter/material.dart';
import 'package:untitled5/second_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SecondPage.id);
            },
            icon: const Icon(Icons.arrow_forward),
          )
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                // borderRadius:  const BorderRadius.only(
                //   topLeft: Radius.circular(30),
                //   topRight: Radius.circular(30),
                // ),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black, width: 5),
                color: Colors.red,
              ),
              child: const Center(
                child: Text(
                  "Container",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 30,
                right: 10,
                left: 10,
              ),
              //margin: EdgeInsets.all(20),
              height: 200,
              width: 350,
              color: Colors.green,
              child: Center(
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
