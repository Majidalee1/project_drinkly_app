import 'package:flutter/material.dart';
import 'package:waveprogressbar_flutter/waveprogressbar_flutter.dart';

class WaterMeter extends StatefulWidget {
  final int fb_tdsValue;

  const WaterMeter({Key key, this.fb_tdsValue}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WaterMeterState();
  }
}

class WaterMeterState extends State<WaterMeter> {
  //默认初始值为0.0
  double waterHeight = 0.0;
  Color initialMeterColor = Colors.green;
  WaterController waterController = WaterController();
  Color _getColor() {
    Color meterColor;
    waterHeight = widget.fb_tdsValue / 1000;
    if (waterHeight <= 0.35) {
      meterColor = Colors.green;
    } else {
      meterColor = Colors.blueGrey;
    }

    return meterColor;
  }

  void _changeWaterAnimation() {
    setState(() {
      waterHeight = widget.fb_tdsValue / 1000;
      waterController.changeWaterHeight(waterHeight);
      initialMeterColor = _getColor();
    });
  }

  @override
  void initState() {
    super.initState();
    // WidgetsBinding widgetsBinding = WidgetsBinding.instance;
    // widgetsBinding.addPostFrameCallback((callback) {
    //   waterHeight = widget.fb_tdsValue / 1000;
    //   waterController.changeWaterHeight(waterHeight);
    // });

    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        _changeWaterAnimation();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.fb_tdsValue);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 80.0),
        child: new Center(
          child: GestureDetector(
            onTap: _changeWaterAnimation,
            child: new WaveProgressBar(
              flowSpeed: 2.0,
              waveDistance: 45.0,
              waterColor: initialMeterColor,
              //  waterHeight <= 0.35 ? Colors.green : Colors.lightBlue,
              //  waterHeight < 85 ? Color(0xFF68BEFC) :
              strokeCircleColor: Colors.black38,
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
