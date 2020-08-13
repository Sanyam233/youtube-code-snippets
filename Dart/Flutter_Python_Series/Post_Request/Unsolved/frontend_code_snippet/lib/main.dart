import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
  //function to add border and rounded edges to our form
  OutlineInputBorder _inputformdeco() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide:
          BorderSide(width: 1.0, color: Colors.blue, style: BorderStyle.solid),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Container(
              width: 350,
              child: Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your name: ',
                    enabledBorder: _inputformdeco(),
                    focusedBorder: _inputformdeco(),
                  ),
                ),
              ),
            ),

            FlatButton(
              onPressed: () async {},
              child: Text('SEND'),
              color: Colors.blue,
            ),

            FlatButton(
              onPressed: () async {},
              child: Text('GET'),
              color: Colors.lightBlue,
            ),

            //displays the data on the screen
            Text(
              "",
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
