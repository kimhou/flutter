import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWord extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Text(WordPair.random().asPascalCase);
  }
}