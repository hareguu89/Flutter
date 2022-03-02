import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: GestureDetector(
          onTap: () => {print('click')},
          child: Row(children: [
            Text(
              '아라동',
            ),
            Icon(Icons.arrow_drop_down)
          ]),
        ),
        actions: [
          IconButton(
            onPressed: () => {print('icon button')},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => {print('icon button')},
            icon: Icon(Icons.tune),
          ),
          IconButton(
            onPressed: () => {print('icon button')},
            icon: Icon(Icons.tune),
          ),
        ],
      ),
    );
  }
}
