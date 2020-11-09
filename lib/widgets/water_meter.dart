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
  Function _changeWaterAnimation() {
    setState(() {
      waterController.changeWaterHeight(0.80);
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding widgetsBinding = WidgetsBinding.instance;
    widgetsBinding.addPostFrameCallback((callback) {
      //这里写你想要显示的百分比
      waterController.changeWaterHeight(0.56);
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
              waterColor: Colors.red,
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