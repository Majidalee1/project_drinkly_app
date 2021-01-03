import 'package:drinkly/models/usage_data.dart';
import 'package:drinkly/widgets/nav_drawer.dart';
import 'package:drinkly/widgets/water_meter.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';
import 'package:waveprogressbar_flutter/waveprogressbar_flutter.dart';

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

  var tdsValue;
  var tdsTemp;

  // sendMessage() {
  //   var _firebaseRef = FirebaseDatabase().reference().child('Sensor');
  //   _firebaseRef.reference().once().then((DataSnapshot snap) {
  //     var value = snap.value;
  //     tdsValue = value['data'];
  //     tdsTemp = value['Temperature'];
  //   });
  // }

  final databaseReferenceTest = FirebaseDatabase.instance.reference();

  sendMessage() {
    databaseReferenceTest.child('Sensor').onValue.listen((event) {
      var snap = event.snapshot;

      if (snap.value != null) {
        setState(() {
          tdsValue = snap.value['data'];
          tdsTemp = snap.value['Temperature'];
          print(snap.value['Temperature']);
        });
      } else {
        tdsValue = 0;
        tdsTemp = 0;
      }
    });
  }

  double waterHeight = 0.0;
  WaterController waterController = WaterController();

  Color get waterColor {
    if (tdsValue >= 350)
      return Colors.green;
    else {
      return Colors.blue;
    }
  }

  void _changeWaterAnimation() {
    setState(() {
      waterHeight = tdsValue / 1000;
      waterController.changeWaterHeight(waterHeight);
    });
  }

  void getValue() {
    setState(() {
      sendMessage();
      _changeWaterAnimation();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(milliseconds: 400), () {
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
            child: WaveProgressBar(
              flowSpeed: 2.0,
              waveDistance: 45.0,
              waterColor: waterColor,
              //  waterHeight <= 0.35 ? Colors.green : Colors.lightBlue,
              //  waterHeight < 85 ? Color(0xFF68BEFC) :
              strokeCircleColor: Colors.black38,
              heightController: waterController,
              percentage: waterHeight,
              size: new Size(300, 300),
              textStyle: new TextStyle(
                  color: Colors.black54,
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
