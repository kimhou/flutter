import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './RandomWord.dart';

class AutoListView extends StatefulWidget{
  @override
  AutoListViewState createState()=>AutoListViewState();
}

class AutoListViewState extends State<AutoListView>{
  final _list  = <RandomWord>[];
  @override
  Widget build(BuildContext context){
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i){
        if(i >= _list.length){
          _list.add(RandomWord());
        }
        return ListTile(
          title: _list[i]
        );
      },
    );
  }
}