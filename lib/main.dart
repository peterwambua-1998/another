import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          fontFamily: 'Poppins'),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        backgroundColor: Colors.purple[800],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/elephant.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ),
              Text(
                'NAME',
                style: TextStyle(color: Colors.grey[800], letterSpacing: 2.0),
              ),
              const SizedBox(height: 10),
              Text(
                'Peter Wambua',
                style: TextStyle(
                    color: Colors.indigo[900],
                    letterSpacing: 2.0,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(color: Colors.grey[800], letterSpacing: 2.0),
              ),
              const SizedBox(height: 10),
              Text(
                '8',
                style: TextStyle(
                    color: Colors.indigo[900],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.purple[400],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'pwambua25@gmail.com',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 16.0,
                        letterSpacing: 1.0),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
