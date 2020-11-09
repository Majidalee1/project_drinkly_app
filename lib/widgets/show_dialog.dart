import 'package:flutter/material.dart';

class ShowDialog extends StatefulWidget {
  @override
  _ShowDialogState createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Dialog(
        child: Text("hello world"),
      ),
    );
  }
}
