import 'package:flutter/material.dart';
//import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña TabBar',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
} //my app tateless widget

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} // my home page StatefulWidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.yellowAccent), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.dangerous_outlined)),
              Tab(icon: Icon(Icons.radar)),
              Tab(icon: Icon(Icons.cabin)),
              Tab(icon: Icon(Icons.access_time)),
            ],
          ),
          centerTitle: true,
          title: Text('Sabritas'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.dangerous_outlined, size: 350),
            Icon(Icons.radar, size: 350),
            Icon(Icons.cabin, size: 350),
            Icon(Icons.access_time, size: 350),
          ],
        ),
      ),
    );
  } // widget build context
} //my home page state
