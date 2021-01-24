import 'package:flutter/material.dart';
import 'package:connection_verify/connection_verify.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("History")),
      body: Container(
        child: Text("hello"),
      ),
    );
  }
}
