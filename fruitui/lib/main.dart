import 'package:flutter/material.dart';
import 'package:fruitui/request.dart';

import 'fruitList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}




class MyHomePage extends StatelessWidget {
  final String title;
  final Future<List<Fruits>> products;
  
  MyHomePage({required Key key, required this.title, required this.products}) : super(key: key);
  
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF4CAF50),
          title: Text("GeeksForGeeks"),
        ),
        body: Center(
          child: FutureBuilder<List<Fruits>>(
            future: products,
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? FruitList(items: [],)
                  : Center(child: CircularProgressIndicator());
            },
          ),
        ));
  }
}