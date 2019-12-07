import 'package:flutter/material.dart';
import './components/AutoListView.dart';

void main()=>runApp(HelloWorld());

class HelloWorld extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'hello',
      home: Scaffold(
        appBar: AppBar(
          title: Text('title')
        ),
        body: Center(child: AutoListView(),)
      )
    );
  }
}


