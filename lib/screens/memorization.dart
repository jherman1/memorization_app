import 'package:flutter/material.dart';
import 'package:memorization_app/models/memorization.dart';

class MemorizationScreen extends StatefulWidget {
  const MemorizationScreen({super.key, required this.memorization});

  final Memorization memorization;

  @override
  State<MemorizationScreen> createState() {
    return _MemorizationScreenState();
  }
}

class _MemorizationScreenState extends State<MemorizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.memorization.title),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .6,
            child: SingleChildScrollView(
              child: Text(
                widget.memorization.content,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
