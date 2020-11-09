import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:drinkly/widgets/nav_drawer.dart';
import 'package:drinkly/widgets/water_meter.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.white,
      ),
      home: MeterScreen(),
    );
  }
}

class MeterScreen extends StatefulWidget {
  @override
  _MeterScreenState createState() => _MeterScreenState();
}

class _MeterScreenState extends State<MeterScreen> {
  void _showDialog() {
    AlertDialog(
      title: Text("hello"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          iconTheme: new IconThemeData(
              color: Colors.black54,
              opacity: 0.90,
              size: Theme.of(context).iconTheme.size),
          elevation: 0,
          backgroundColor: Theme.of(context).accentColor,
          actions: [
            IconButton(
              icon: Icon(Icons.sort),
              onPressed: _showDialog,
              // color: Colors.black54,
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.20,
              child: Column(
                children: [
                  Text(
                    "48%",
                    style: TextStyle(color: Colors.black, fontSize: 60.0),
                  ),
                  Text(
                    "TDS-Value",
                    style: TextStyle(color: Colors.black54, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: WaterMeter(),
          )
        ],
      ),
    );
  }
}
