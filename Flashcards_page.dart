import 'package:flutter/material.dart';

class Flashcardspage extends StatefulWidget {
  const Flashcardspage({Key? key}) : super(key: key);

  @override
  State<Flashcardspage> createState() => _FlashcardspageState();
}

class _FlashcardspageState extends State<Flashcardspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
      ),
    );
  }
}
