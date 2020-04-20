import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/ME.png'),
              ),
              Text(
                'Arvin Teymouri',
                style: TextStyle(
                  fontFamily: 'AFTERHOURS',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter Dev',
                style: TextStyle(
                  fontFamily: 'AFTERHOURS',
                  fontSize: 20.0,
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.blueGrey,
                  thickness: 3,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      '+447577961188',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'AFTERHOURS',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      'teymouri.arvin@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'AFTERHOURS',
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: () => launch('http://arvint.tech'),
                child: new Icon(Icons.public),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueGrey,
              ),
              FloatingActionButton(
                backgroundColor: Colors.transparent,
                onPressed: () => launch('https://github.com/arvz108'),
                child: Image.asset("assets/gitty.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
