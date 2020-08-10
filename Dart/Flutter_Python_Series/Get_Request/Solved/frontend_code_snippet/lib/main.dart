import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Get Request',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String greetings = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(greetings, //Text that will be displayed on the screen
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Center( 
              child: Container( //container that contains the button 
                width: 150,    
                height: 60,
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () async { //async function to perform http get

                  final response = await http.get('http://127.0.0.1:5000/'); //getting the response from our backend server script

                  final decoded = json.decode(response.body) as Map<String, dynamic>; //converting it from json to key value pair 

                  setState(() {
                    greetings = decoded['greetings']; //changing the state of our widget on data update
                  });

                  },
                  child: Text( 
                    'Press',
                    style: TextStyle(fontSize: 24,),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
