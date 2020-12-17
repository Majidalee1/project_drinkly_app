import 'package:drinkly/widgets/nav_drawer.dart';
import 'package:drinkly/widgets/water_meter.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';

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

  int tdsValue = 0;
  double tdsTemp = 0.0;

  sendMessage() {
    var _firebaseRef = FirebaseDatabase().reference().child('Sensor');
    _firebaseRef.reference().once().then((DataSnapshot snap) {
      var value = snap.value;
      tdsValue = value['data'];
      tdsTemp = value['Temperature'];
    });
  }

  void getValue() {
    setState(() {
      sendMessage();
    });
  }

  _functionToExecute() {}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        sendMessage();
      });
    });
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
              height: MediaQuery.of(context).size.height * 0.30,
              child: Column(
                children: [
                  IconButton(
                      icon: Icon(Icons.rotate_left), onPressed: getValue),
                  Container(
                    child: Text(
                      "$tdsTemp°C",
                      style: TextStyle(
                        fontSize: 60.0,
                      ),
                    ),
                  ),
                  Text(
                    "Temperature",
                    style: TextStyle(color: Colors.black54, fontSize: 30.0),
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
            child: WaterMeter(
              fb_tdsValue: tdsValue,
            ),
          )
        ],
      ),
    );
  }
}
