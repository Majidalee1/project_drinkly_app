import 'package:drinkly/models/usage_data.dart';
import 'package:drinkly/widgets/tds_data.dart';
import 'package:flutter/material.dart';

class UsageRecord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Drinkly",
              style: TextStyle(fontSize: 30.0),
            )),
            bottom: TabBar(tabs: [
              Tab(text: "TDS"),
              Tab(text: "Sensor KIT"),
              Tab(text: "Contact"),
            ]),
          ),
          body: TabBarView(
            children: [
              Container(
                  child: TdsData(
                Tdsdata: Tdsdata,
              )),
              TdsData(Tdsdata: Tdsdata),
              TdsData(Tdsdata: Tdsdata),
            ],
          ),
        ),
      ),
    );
  }
}
