import 'package:drinkly/models/firebase_data.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/Material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  var value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  var tdsValue;
  var tdsTemp;
  final databaseReferenceTest = FirebaseDatabase.instance.reference();

  sendMessage() {
    databaseReferenceTest.child('Sensor').onValue.listen((event) {
      var snap = event.snapshot;
      setState(() {
        tdsValue = snap.value['data'];
        tdsTemp = snap.value['Temperature'];
        print(snap.value['data']);
      });
    });
  }

  changeData() {
    databaseReferenceTest.child('Sensor').child('data').set(49);
    // datachild('id').set({'title': 'Realtime db rocks','created_at': time});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("tdsValue"),
        ),
        body: Column(
          children: [
            Container(
              child: Text(
                "$tdsValue°C",
                style: TextStyle(
                  fontSize: 60.0,
                ),
              ),
            ),
            MaterialButton(
              child: Text('getValue'),
              onPressed: sendMessage(),
            ),
            RaisedButton(
              onPressed: changeData,
              child: Text('changeValue'),
            ),
          ],
        ),
      ),
    );
  }
}

// var tdsValue;

//   void getValue() {
//     var _firebaseRef = FirebaseDatabase().reference().child('Sensor');
//     _firebaseRef.reference().once().then((DataSnapshot snap) {
//       var value = snap.value;
//       tdsValue = value['Temperature'];
//     });
//   }
