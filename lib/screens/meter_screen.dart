import 'package:circle_wave_progress/circle_wave_progress.dart';
import 'package:connection_verify/connection_verify.dart';

import 'package:drinkly/widgets/nav_drawer.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/Material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MeterScreen extends StatefulWidget {
  @override
  _MeterScreenState createState() => _MeterScreenState();
}

class _MeterScreenState extends State<MeterScreen> {
  var value;
  var demoTdsValue = 200;
  var tdsValue = 10;
  var maxValue = 0;
  dynamic tdsTemp = 0.0;
  final databaseReferenceTest = FirebaseDatabase.instance.reference();

  sendMessage() {
    databaseReferenceTest.child('Sensor').onValue.listen((event) {
      var snap = event.snapshot;
      setState(() {
        tdsValue = snap.value['data'];
        tdsTemp = snap.value['Temperature'];
        maxValue = snap.value['data'];
        print(snap.value['data']);
      });
    });
  }

  double get getTdsValue {
    if (tdsValue == null) {
      tdsValue = 0;
    } else if (tdsValue >= 990) {
      tdsValue = 990;
      return tdsValue / 10.0;
    } else {
      return tdsValue / 10.0;
    }
  }

  Color get getColor {
    if (tdsValue == null) {
      tdsValue = 10;
    } else if (tdsValue > 900) {
      return Colors.red;
    } else if (tdsValue < 300) {
      return Colors.green[600];
    } else if (tdsValue > 300 && tdsValue <= 600) {
      return Colors.yellow[600];
    } else {
      return Colors.orange[800];
    }
  }

  void getConnectionStatus() async {
    if (await ConnectionVerify.connectionStatus()) {
      print("I have network connection!");
      for (int i = 0; i <= 2; i++) {
        Fluttertoast.showToast(
          msg: "Insert Probes into water",
          backgroundColor: Colors.green,
        );
      }
      //Do your online stuff here
    } else {
      print("I don't have network connection!");
      Fluttertoast.showToast(
        msg: "No internet Connected",
        backgroundColor: Colors.red,
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getConnectionStatus();
    sendMessage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text(
            "Drinkly",
            style: TextStyle(fontFamily: 'Raleway', fontSize: 24),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${tdsTemp.toStringAsFixed(1)}",
                    style: TextStyle(
                      color: Colors.purple[800],
                      fontSize: 70.0,
                    ),
                  ),
                  Container(
                    height: 70,
                    child: Image.asset('assets/images/centigrade.png'),
                  ),
                ],
              ),
            ),
            Text(
              "TDS VALUE",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway'),
            ),
            Image.asset(
              'assets/images/strip-main.png',
              height: 70,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  child: CircleWaveProgress(
                    size: MediaQuery.of(context).size.height * 0.50,
                    borderWidth: 10.0,
                    backgroundColor: Colors.transparent,
                    borderColor: Colors.black45,
                    waveColor: getColor,
                    progress: getTdsValue,
                  ),
                ),
                Align(
                  child: Text(
                    "$maxValue",
                    style: TextStyle(fontSize: 70.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
