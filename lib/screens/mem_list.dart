import 'package:flutter/material.dart';
import 'package:memorization_app/data/dummy_mems.dart';
import 'package:memorization_app/models/memorization.dart';
import 'package:memorization_app/widgets/mem_card.dart';

class MemList extends StatefulWidget {
  const MemList({super.key});

  @override
  State<MemList> createState() {
    return _MemListState();
  }
}

class _MemListState extends State<MemList> {
  final List<Memorization> memorizations = dummyMemorizations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Memorization List')),
      body: ListView.builder(
        itemCount: dummyMemorizations.length,
        itemBuilder: (context, index) {
          return MemCard(memorization: dummyMemorizations[index]);
        },
      ),
    );
  }
}
