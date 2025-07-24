import 'package:flutter/material.dart';
import 'package:memorization_app/models/memorization.dart';
import 'package:memorization_app/screens/memorization.dart';

class MemCard extends StatelessWidget {
  const MemCard({
    super.key,
    required this.memorization,
  });

  final Memorization memorization;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
        side: BorderSide(
          color: Colors.black,
          width: 1.2,
        ),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  MemorizationScreen(memorization: memorization),
            ),
          );
        },
        child: Container(
          height: 64,
          padding: EdgeInsets.all(12),
          alignment: Alignment.centerLeft,
          child: Text(
            memorization.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
