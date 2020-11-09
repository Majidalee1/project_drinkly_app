import 'package:flutter/material.dart';

class showDialog extends StatefulWidget {
  @override
  _showDialogState createState() => _showDialogState();
}

class _showDialogState extends State<showDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Dialog(
        child: Text("hello world"),
      ),
    );
  }
}
