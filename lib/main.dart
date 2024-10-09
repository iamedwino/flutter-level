import 'package:flutter/material.dart';

void main(){
  runApp(FlutterLevel());
}

class FlutterLevel extends StatefulWidget {
  const FlutterLevel({super.key});

  @override
  State<FlutterLevel> createState() => _FlutterLevelState();
}

class _FlutterLevelState extends State<FlutterLevel> {

  int flutterLevel = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Flutter Dev Level',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
         floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              flutterLevel += 1;
            });
          },
          child: Icon(
            Icons.add,
          ),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 00.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('lib/images/emoji.jpg'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 100.0,
                color: Colors.grey[800],
              ),
              Text(
                "NAME",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  //fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "EDWINO",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 32.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 22),
              Text(
                "CURRENT FLUTTER DEV LEVEL",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  //fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '$flutterLevel',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 32.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                    size: 28,
                  ),
                  SizedBox(width: 7.0),
                  Text(
                    "edwinodesign@gmail.com",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
