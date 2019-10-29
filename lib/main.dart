import 'package:flutter/material.dart';
import 'package:todo_menu/homescreenbottom.dart';
import 'package:todo_menu/homescreentop.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.tealAccent,
        elevation: 0.0,
        actions: <Widget>[ IconButton(icon: Icon(Icons.calendar_today, color: Colors.white,),)],
      ),
      drawer: Drawer(
        child: Text('Test Drawer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomeScreenTop(),
            HomeScreenBottom(),
          ],
        ),
      ),
    );
  }
}
