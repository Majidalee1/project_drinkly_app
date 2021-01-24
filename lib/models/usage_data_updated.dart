import 'package:drinkly/models/usage_info.dart';

// ignore: non_constant_identifier_names
final List<Usageinfo> Tdsdata = [
  Usageinfo(
    title: "What is TDS",
    data:
        "TDS is an abbreviation for Total Dissolved Solids in a liquid, including organic and inorganic substances in a molecular, ionic, or micro-granular suspended form. TDS is generally expressed in parts per million (ppm) or as milligrams per liter (mg/L). TDS is directly related to the quality of water i.e., the lower a TDS figure, the purer the water. As an example, reverse osmosis purified water will have a TDS between 0 and 10, whereas tap water will vary between 20 and 300, depending on where you live in the world.",
    hasimg:True
    imgUrl'what is tds .png':
  ),

    Usageinfo(
    title: "How is TDS Measure",
    data:
        "Now that you know what is TDS, its impact and how it may affect you, you are worried and want to measure the level of TDS in your water. But how? Well, normally TDS are measured in a laboratory where a sample will be filtered, dried and heated to find out how much TDS is present.

However, without all these equipment, how do we measure TDS easily and most importantly, in a cost-effective manner? Well, the solution will be measuring TDS using our Gravity analog TDS Sensor For Water Quality (Total Dissolved Solids) together with an ESP32 Microcontroller.


How this TDS sensor works is that it is an electronic pen that is able to measure the conductivity of the water as the electrical conductivity of water is directly related to the concentration of dissolved ionized solids in the water. Ions from the dissolved solids in water create the ability for that water to conduct an electric current, which can be measured by this TDS sensor Testing your water using a TDS Sensor is the easiest way to measure for total dissolved solids. Some filtration systems are equipped with a TDS Sensor to monitor the levels periodically. Also, your water supplier is required to test and maintain reports regarding water quality and provide them upon request. However, these reports do not show reasons for high TDS that are specific to your house, such as corroded pipes.

Total dissolved solids (TDS) is measured as a volume of water with the unit milligrams per liter (mg/L), otherwise known as parts per million (ppm). According to the EPA secondary drinking water regulations, 500 ppm is the recommended maximum amount of TDS for your drinking water. Anything measurement higher than 1000 ppm is an unsafe level of TDS. If your TDS reading exceeds 2000 ppm, then a filtration system may be unable to handle it.",
   hasimg:True
    imgUrl'how is tds measured.jpg':
  
  ),
  Usageinfo(
    title: "How is TDS sensor calibrated",
    data:
        "A TDS Sensor is basically an electrical charge (EC) meter whereby two electrodes equally spaced apart are inserted into water and used to measure charge. The result is interpreted by the TDS meter and converted into a ppm figure.

TDS Sensor Working

If the water contains no soluble materials and is pure, it will not conduct a charge and will, therefore, have a 0 ppm figure. Conversely, if the water is full of dissolved materials, it will conduct a charge, with the resulting ppm figure being proportional to the number of dissolved solids. This is because all dissolved solids have an electrical charge, which allows conduction of electrical charge between the electrodes.",
  ),
  Usageinfo(
    title: "Necessary Compenents",
    data:
        "1	NodMCU Esp32-Wroom or any other microcontroller
2	TDS Sensor	Gravity analog TDS Sensor
3	DS18B20 Sensor	DS18B20 One-Wire Waterproof Temperature Sensor
4	Resistor	330 ohm
5	Connecting Wires	Jumper Wires	6",
  ),
];
