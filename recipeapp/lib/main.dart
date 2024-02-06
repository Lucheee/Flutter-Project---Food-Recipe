import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Food Recipe App',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        fontFamily: 'Poppins',
      ),
      home: const RecipeApp(),
      
    );
  }
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar:  AppBar(
      title : Padding(
        padding: const EdgeInsets.only(top:20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz))
               
          ],
        ),
      ),
          

    
    ),
   
    );
  }
}


