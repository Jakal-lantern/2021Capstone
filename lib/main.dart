import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text('App Bar'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: SafeArea(
          child: Column(    // TODO: Create event container template
            verticalDirection: VerticalDirection.down,    // Default
            crossAxisAlignment: CrossAxisAlignment.stretch,   // Stretch children across screen width
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                height: 100.0,
                color: Colors.white,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100.0,   // TODO: Find a way to fractionally size name/description text
                          child: Text("Name")
                        ),
                        Text("Description"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Time"),
                        Text("Date"),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 100.0,
                  color: Colors.grey,
                child: Text("Container 2"),
              )
            ],
          )
        ),
        bottomNavigationBar: BottomAppBar(    // NOTE: This probably has a better way of doing it
          color: Colors.deepPurpleAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  print("Icon 1 clicked");
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.account_circle),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
                          child: Text("My Events")
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  print("Icon 2 clicked");
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.accessibility),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
                          child: Text("My Invites")
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(    // TODO: Make this a floating button?
                onTap: (){
                  print("Icon 3 clicked");
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.adb),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
                          child: Text("Create Event")
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          elevation: 0,   // Do I need this?
        )
      )
    );
  }
}