import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
    String text = "Hello, world!";
    bool showText = true;
    Color bgColor = Colors.white;


    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Hello World App')),
          backgroundColor: bgColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (showText) Text(text, style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        text = "New Text Added!";
                      });
                    },
                    child: Text("Add Text"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showText = !showText;
                      });
                    },
                    child: Text("Toggle Text"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        bgColor =
                        bgColor == Colors.white ? Colors.blue : Colors.white;
                      });
                    },
                    child: Text("Change Color"),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
