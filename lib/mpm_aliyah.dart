import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleApp extends State{
  var _warna = Colors.red;
  var _ukuranTeks = 20.0;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: (
          Center(child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Text("Metode Pemrograman Modern"),
                    Text("Tugas Dart"),
                    Text("Aliyah Nadia Ramadhani - 21060120140189"),
                    Text("21060120120033"),
                  ],
                ),
              ),
              
              AnimatedDefaultTextStyle(
                child: Container(
                  child: Text('Teknik Elektro'),
                ), 
                style: TextStyle(
                  color: _warna, fontSize: _ukuranTeks
                ), 
                duration: const Duration(seconds: 1)),
              ElevatedButton(onPressed: (){
                setState(() {
                  _warna= Colors.blue;
                  _ukuranTeks=40.0;
                });
              }, 
              child: Text("Animation Running Out"))
            ],
          ),)
        ),
      ),
    );
  }
}