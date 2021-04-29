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
          child: Column(
            verticalDirection: VerticalDirection.down,    // Default
            crossAxisAlignment: CrossAxisAlignment.stretch,   // Stretch children across screen width
            children: <Widget>[
              // First version of container template
              Container(
                padding: EdgeInsets.all(10.0),
                height: 125.0,
                color: Colors.white,
                child: Row(
                  children: [
                    // NAME AND DESCRIPTION
                    Flexible(
                      child: FractionallySizedBox(
                        widthFactor: 1,   // This seems to be working
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child: Text("Sick Name",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800
                                  )
                                )
                            ),
                            Text("This is the description of an event. Kinda cool right? You can really have whatever you want! I should implement a char limit though.")
                          ],
                        )
                      ),
                    ),
                    // TIME AND DATE
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            width: 1.0,
                          )
                        )
                      ),
                      width: 75.0,    // TEMP: I want as little hard-coded values as possible
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(   // Probably a better way to write this
                            children: [
                              Text('3:00',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              Text('pm',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                                )
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text('January',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              Text('4th',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              Text('2021',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  )
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )



                /*
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
                */
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
          elevation: 0,
        )
      )
    );
  }
}