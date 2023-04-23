import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
const MyHomePage({super.key});
@override
State<MyHomePage> createState() => _MyHomePageState();}
class _MyHomePageState extends State<MyHomePage> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Flutter Experiment 1"),
actions: const [
Icon(Icons.search),
SizedBox(
width: 10,
),
Icon(Icons.more_vert),
],
),
body: SingleChildScrollView(
physics: const NeverScrollableScrollPhysics(),
child: Column(
children: [
Container(
height: 50,
),
Container(
height: 100,
alignment: Alignment.center,
width: 100,
color: Colors.red,
child: const Text("Hello",
style: TextStyle(fontSize: 20, color: Colors.white)),),
Container(
height: 50,
),
SizedBox(
height: 100,
width: 100000,
child: SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Container(
height: 100,
width: 100,
color: Colors.red,
),
Container(
height: 100,
width: 100,
color: Colors.green,
),
Container(
height: 100,
width: 100,
color: Colors.blue,
),
Container(
height: 100,
width: 100,
color: Colors.yellow,
),
Container(
height: 100,
width: 100,
color: Colors.purple,
),
Container(
height: 100,
width: 100,
color: Colors.orange,
),
Container(
height: 100,
width: 100,
color: Colors.red,
),
Container(
height: 100,
width: 100,
color: Colors.green,
),
Container(
height: 100,
width: 100,
color: Colors.red,
),
Container(
height: 100,
width: 100,
color: Colors.green,
),
Container(
height: 100,
width: 100,
color: Colors.blue,
),
Container(
height: 100,
width: 100,
color: Colors.yellow,
),
],
),
),
),
Container(
height: 50,
),
SizedBox( height: 500, width: MediaQuery.of(context).size.width, child: SingleChildScrollView( child: Column( children: [ Container( height: 100, width: 300, color: Colors.green, ),Container( height: 100, width: 300, color: Colors.blue, ),Container( height: 100, width: 300, color: Colors.yellow, ),Container( height: 100, width: 300, color: Colors.green, ),Container( height: 100, width: 300, color: Colors.blue, ),Container( height: 100, width: 300, color: Colors.yellow, ),Container( height: 100, width: 300, color: Colors.green, ),Container( height: 100, width: 300, color: Colors.blue, ),Container( height: 100, width: 300, color: Colors.yellow, ), ], ), ), ) ], ), )); }}