import 'package:flutter/material.dart';
import 'package:waveprogressbar_flutter/waveprogressbar_flutter.dart';

class WaterMeter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WaterMeterState();
  }
}

class WaterMeterState extends State<WaterMeter> {
  //默认初始值为0.0
  double waterHeight = 0.0;
  WaterController waterController = WaterController();
  void _changeWaterAnimation() {
    setState(() {
      waterHeight = 0.80;
      waterController.changeWaterHeight(waterHeight);
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding widgetsBinding = WidgetsBinding.instance;
    widgetsBinding.addPostFrameCallback((callback) {
      waterHeight = 0.30;
      waterController.changeWaterHeight(waterHeight);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 80.0),
        child: new Center(
          child: GestureDetector(
            onTap: _changeWaterAnimation,
            child: new WaveProgressBar(
              flowSpeed: 2.0,
              waveDistance: 45.0,
              waterColor: waterHeight <= 0.35 ? Colors.lightBlue : Colors.green,
              //  waterHeight < 85 ? Color(0xFF68BEFC) :
              //strokeCircleColor: Color(0x50e16009),
              heightController: waterController,
              percentage: waterHeight,
              size: new Size(300, 300),
              textStyle: new TextStyle(
                  color: Color(0x15000000),
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
