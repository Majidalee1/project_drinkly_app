import 'package:drinkly/models/usage_info.dart';

// ignore: non_constant_identifier_names
final List<Usageinfo> Tdsdata = [
  Usageinfo(
    title: "What is TDS",
    data:
        "TDS is an abbreviation for Total Dissolved Solids in a liquid, including organic and inorganic substances in a molecular, ionic, or micro-granular suspended form. TDS is generally expressed in parts per million (ppm) or as milligrams per liter (mg/L). TDS is directly realted to to the quality of water ie: the lower a TDS figure, the purer the water.  TDS level as Categorized as follows: excellent, less than 300 mg/litre; good, between 300 and 600 mg/litre; fair, between 600 and 900 mg/litre; poor, between 900 and 1200 mg/litre; and unacceptable, greater than 1200 mg/litre",
    hasImg: true,
    imgUrl: 'assets/images/strip-main.png',
  ),
  Usageinfo(
    title: "How is TDS Measure",
    data:
        "Now that you know what is TDS, its impact and how it may affect you, you are worried and want to measure the level of TDS in your water. But how? Well, normally TDS are measured in a laboratory where a sample will be filtered, dried and heated to find out how much TDS is present However, without all these equipment, how do we measure TDS easily and most importantly, in a cost-effective manner? Well, the solution will be measuring TDS using our Gravity analog TDS Sensor For Water Quality (Total Dissolved Solids) together with an ESP32 Microcontroller. How this TDS sensor works is that it is an electronic pen that is able to measure the conductivity of the water as the electrical conductivity of water is directly related to the concentration of dissolved ionized solids in the water. Ions from the dissolved solids in water create the ability for that water to conduct an electric current, which can be measured by this TDS sensor Testing your water using a TDS Sensor is the easiest way to measure for total dissolved solids. Some filtration systems are equipped with a TDS Sensor to monitor the levels periodically. Also, your water supplier is required to test and maintain reports regarding water quality and provide them upon request. However, these reports do not show reasons for high TDS that are specific to your house, such as corroded pipes.Total dissolved solids (TDS) is measured as a volume of water with the unit milligrams per liter (mg/L), otherwise known as parts per million (ppm). According to the EPA secondary drinking water regulations, 500 ppm is the recommended maximum amount of TDS for your drinking water. Anything measurement higher than 1000 ppm is an unsafe level of TDS. If your TDS reading exceeds 2000 ppm, then a filtration system may be unable to handle it.",
    hasImg: true,
    imgUrl: 'assets/images/how.jpg',
  ),
  Usageinfo(
    title: "How is TDS sensor calibrated",
    data:
        "A TDS Sensor is basically an electrical charge (EC) meter whereby two electrodes equally spaced apart are inserted into water and used to measure charge. The result is interpreted by the TDS meter and converted into a ppm figure. TDS Sensor Working If the water contains no soluble materials and is pure, it will not conduct a charge and will, therefore, have a 0 ppm figure. Conversely, if the water is full of dissolved materials, it will conduct a charge, with the resulting ppm figure being proportional to the number of dissolved solids. This is because all dissolved solids have an electrical charge, which allows conduction of electrical charge between the electrodes.",
    hasImg: false,
  ),
  Usageinfo(
    title: "Necessary Compenents",
    data: """
        1	NodMCU Esp32-Wroom or any other 
        microcontroller

        2	TDS Sensor	Gravity analog TDS Sensor

        3	DS18B20 Sensor	DS18B20 One-Wire
         Waterproof Temperature Sensor

        4	Resistor	330 ohm

        5	Connecting Wires	Jumper Wires	6""",
    hasImg: false,
  ),
];

final List<Usageinfo> sensorKitData = [
  Usageinfo(
    title: '''NODEMCU (ESP32-WROOM)''',
    data: '''
ESP32 is a series of low-cost, low-power system on a chip microcontrollers with integrated Wi-Fi and dual-mode Bluetooth. The ESP32 series employs a Tensilica Xtensa LX6 microprocessor in both dual-core and single-core variations and includes built-in antenna switches, RF balun, power amplifier, low-noise receive amplifier, filters, and power-management modules. ESP32 is created and developed by Espressif Systems, a Shanghai-based Chinese company, and is manufactured by TSMC using their 40 nm process.
Features of NodeMCU ESP32-Wroom 
•	NodeMCU based on ESP-WROOM-32 module
•	Based on ESP32 DEVKIT DOIT
•	36 GPIO version
•	ESP32 is a dual core 32-bit processor with built-in 2.4 GHz Wi-Fi and Bluetooth
•	4MByte flash memory
•	520KByte RAM 
•	3.3V Operating voltage range
•	In breadboard friendly breakout
''',
    hasImg: true,
    imgUrl: 'assets/images/esp32.jpg',
  ),
  Usageinfo(
    title: '''Gravity Analog TDS Sensor''',
    data:
        '''Gravity Analog TDS Sensor is an Arduino-compatible TDS sensor/Meter Kit for measuring TDS value of the water. It can be applied to domestic water, hydroponic and other fields of water quality testing. This product supports 3.3 ~ 5.5V wide voltage input, and 0 ~ 2.3V analog voltage output, which makes it compatible with 5V or 3.3V control systems or boards. The excitation source is an AC signal, which can effectively prevent the probe from polarization and prolong the life of the probe, meanwhile, it can help increase the stability of the output signal. The TDS probe is waterproof, it can be immersed in water for long time measurement.
              

TECHNICAL DETAILS:
•	Input Voltage: 3.3 ~ 5.5V
•	2. Output Voltage: 0 ~ 2.3V
•	3. Working Current: 3 ~ 6mA
•	4. TDS Measurement Range: 0 ~ 1000ppm
•	5. TDS Measurement Accuracy: ± 10% FS (25 ℃)
•	6. TDS probe with Number of Needle:2
Attention & Things to Remember
•	The probe can not to be used in water above 55 degrees centigrade.
•	The probe cannot be too close to the edge of the container, otherwise, it will affect the reading.
•	The head and the cable of the probe are waterproof, but the connector and the signal transmitter board are not waterproof.
''',
    hasImg: true,
    imgUrl: 'assets/images/Picture1.jpg',
  ),
  Usageinfo(
    title: '''DS18B20 Temparature Sensor''',
    data:
        '''This is a pre-wired and waterproofed (with heat shrink) version of the DS18B20 sensor. Handy for when you need to measure something far away, or in wet conditions. While the sensor is good up to 125°C the cable is jacketed in PVC so we suggest keeping it under 100°C. Because they are digital, you don't get any signal degradation even over long distances! These 1-wire digital temperature sensors are fairly precise (±0.5°C over much of the range) and can give up to 12 bits of precision from the onboard digital-to-analog converter. They work great with any microcontroller using a single digital pin, and you can even connect multiple ones to the same pin, each one has a unique 64-bit ID burned in at the factory to differentiate them. Usable with 3.0-5.0V systems.

The only downside is they use the Dallas 1-Wire protocol, which is somewhat complex, and requires a bunch of code to parse out the communication. If you want something really simple, and you have an analog input pin, the TMP36 is trivial to get going.

We toss in a 4.7k resistor, which is required as a pull-up from the DATA to VCC line when using the sensor. We don't have a detailed tutorial up yet but you can get started by using the Dallas Temperature Control Arduino library which requires also the One Wire Library.
TECHNICAL DETAILS:
•	Stainless steel tube 6mm diameter by 30mm long
•	Cable is 36 long / 91cm, 4mm diameter
•	Contains DS18B20 temperature sensor
•	If your sensor has four wires - Red connects to 3-5V, Black connects to ground and White is data. The copper wire is soldered to the wire shielding
•	If your sensor has three wires - Red connects to 3-5V, Blue/Black connects to ground and Yellow/White is data
DS18B20 Technical specs:
•	Usable temperature range: -55 to 125°C (-67°F to +257°F)
•	9 to 12 bit selectable resolution
•	Uses 1-Wire interface- requires only one digital pin for communication
•	Unique 64 bit ID burned into chip
•	Multiple sensors can share one pin
•	±0.5°C Accuracy from -10°C to +85°C
•	Temperature-limit alarm system
•	Query time is less than 750ms   ''',
    hasImg: true,
    imgUrl: 'assets/images/temp.jpg',
  ),
];

final List<Usageinfo> contactInfo = [
  Usageinfo(
    title: '''Soha Jabbar(Project Manager)''',
    data: '''
Esp32 Configuration & Arduino Programming
Email:2k16-itc-149@student.sau.edu.pk
''',
    hasImg: false,
  ),
  Usageinfo(
    title: '''Zakir Shah ''',
    data: '''
Esp32 Configuration & Arduino Programming
Email:2k16-itc-224@student.sau.edu.pk

''',
    hasImg: false,
  ),
  Usageinfo(
    title: '''Majid Ali''',
    data: '''
Application designer & Backend Developer
Email:2k16-itc-196@student.sau.edu.pk
''',
    hasImg: false,
  ),
];
