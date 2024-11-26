import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class PiChart extends StatefulWidget {
  int step_percent ;
  int heart_percent ;
  int water_percent ;


   PiChart({super.key,
  required this.heart_percent,
  required this.step_percent,
  required this.water_percent});

  @override
  State<PiChart> createState() => _PiChartState();
}

class _PiChartState extends State<PiChart> {
  @override
  Widget build(BuildContext context) {

    List<OrdinalData> ordinalDataList = [
  OrdinalData(
    domain: 'S',
    measure: widget.step_percent,
    color: Colors.purple,
  ),
  OrdinalData(
    domain: 'H',
    measure: widget.heart_percent,
    color: Colors.green,
  ),
  OrdinalData(
    domain: 'D',
    measure: widget.water_percent,
    color: Colors.yellow,
  ),
];
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
    children: [
      DChartPieO(
        data: ordinalDataList,
        customLabel: (ordinalData, index) {
          return '${ordinalData.measure}%';
        },
        configRenderPie: ConfigRenderPie(
          strokeWidthPx: 0,
          arcWidth: 12,
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1,289",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const Text(
              "Steps",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      )
    ],
      ),
    );
  }
}