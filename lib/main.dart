import 'package:datascience_camp_2024_practice/fl_chart/bar_chart1.dart';
import 'package:datascience_camp_2024_practice/fl_chart/bar_chart2.dart';
import 'package:datascience_camp_2024_practice/fl_chart/line_chart1.dart';
import 'package:datascience_camp_2024_practice/fl_chart/line_chart2.dart';
import 'package:datascience_camp_2024_practice/fl_chart/pie_chart.dart';
import 'package:datascience_camp_2024_practice/fl_chart/radar_chart.dart';
import 'package:datascience_camp_2024_practice/rive/login/login.dart';
import 'package:datascience_camp_2024_practice/rive/waterbar.dart';
import 'package:datascience_camp_2024_practice/syncfusion/chart.dart';
import 'package:datascience_camp_2024_practice/syncfusion/datepicker.dart';
import 'package:datascience_camp_2024_practice/syncfusion/gauge.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DataScience Camp 2024 Cambodia Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataScience Camp 2024 Cambodia Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    "fl_chart example",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Line Chart Example
                GestureDetector(
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Line Chart Example 1'),
                    ),
                  ),
                  onTap: () => Get.to(const LineChartSample2()),
                ),
                GestureDetector(
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Line Chart Example 2'),
                    ),
                  ),
                  onTap: () => Get.to(LineChartSample9()),
                ),

                // Bar Chart Example
                GestureDetector(
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Bar Chart Example 1'),
                    ),
                  ),
                  onTap: () => Get.to(const BarChartSample6()),
                ),
                GestureDetector(
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Bar Chart Example 2'),
                    ),
                  ),
                  onTap: () => Get.to(BarChartSample1()),
                ),

                // Pie Chart Example
                GestureDetector(
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Pie Chart Example'),
                    ),
                  ),
                  onTap: () => Get.to(const PieChartSample2()),
                ),

                // Radar Chart Example
                GestureDetector(
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Radar Chart Example'),
                    ),
                  ),
                  onTap: () => Get.to(RadarChartSample1()),
                ),

                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0, top: 30),
                  child: Text(
                    "syncfusion_flutter_charts example",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Line Chart Example
                GestureDetector(
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Line Chart Example'),
                    ),
                  ),
                  onTap: () => Get.to(() => SyncfusionLineChart()),
                ),

                // Gauge Chart Example
                GestureDetector(
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Gauge Chart Example'),
                    ),
                  ),
                  onTap: () => Get.to(() => const SyncfusionGauge()),
                ),

                // Datepicker Example
                GestureDetector(
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Datepicker Example'),
                    ),
                  ),
                  onTap: () => Get.to(() => const SyncfusionDatepicker()),
                ),

                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0, top: 30),
                  child: Text(
                    "Rive example",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Waterbar Example
                GestureDetector(
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('WaterBar Example'),
                    ),
                  ),
                  onTap: () => Get.to(() => const RiveWaterbar()),
                ),

                // Login Example
                GestureDetector(
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Login Example'),
                    ),
                  ),
                  onTap: () => Get.to(() => const LoginScreen()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
