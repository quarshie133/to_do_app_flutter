import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text(
            'TO DO',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 4,
      ),
      body: ListView(
        children: [
          ToDOTile(),
        ],
      ),
    );
  }
}
