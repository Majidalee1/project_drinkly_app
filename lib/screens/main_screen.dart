import 'package:drinkly/widgets/nav_drawer.dart';
import 'package:drinkly/widgets/water_meter.dart';
import 'package:waveprogressbar_flutter/waveprogressbar_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "../widgets/show_dialog.dart";

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
        preferredSize: Size.fromHeight(90.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).accentColor,
          // leading: IconButton(
          //   icon: Icon(Icons.notifications_active),
          //   onPressed: () {},
          //   iconSize: 60.0,
          //   color: Colors.black54,
          // ),
          actions: [
            IconButton(
              icon: Icon(Icons.sort),
              onPressed: _showDialog,
              iconSize: 60.0,
              color: Colors.black54,
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
