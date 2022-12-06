import 'package:cc/pages/Flashcards_page.dart';
import 'package:flutter/material.dart';

loadSession({required BuildContext context}){

  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Flashcardspage()));
}
