import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("", //Text that will be displayed on the screen
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Center( 
              child: Container( //container that contains the button 
                width: 150,    
                height: 60,
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () async { //async function to perform http get

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
