import 'package:flutter/material.dart';
import 'package:memorization_app/models/memorization.dart';
import 'package:memorization_app/utility/string_utility.dart';

class MemorizationScreen extends StatefulWidget {
  const MemorizationScreen({super.key, required this.memorization});

  final Memorization memorization;

  @override
  State<MemorizationScreen> createState() {
    return _MemorizationScreenState();
  }
}

class _MemorizationScreenState extends State<MemorizationScreen> {

  String currentString = '';
  double currentVisibleAmount = 1.0;

  void getCurrentString() {
    String newString = StringUtility.getMemorizationString(widget.memorization.content, currentVisibleAmount, widget.memorization.id);
    print('New String: $newString'); 
    setState(() {
      currentString = newString;
    });
  }

  @override
  Widget build(BuildContext context) {
    getCurrentString();
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
                currentString,
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
