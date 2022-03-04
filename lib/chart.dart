import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Revenue {
  Revenue(this.gastos, this.montos);
  String gastos;
  int montos;
}

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late List<Revenue> _revenueData;
    _revenueData = getRevenueData();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SfCircularChart(
            title: ChartTitle(text: 'Day to day expenses'),
            legend: Legend(
                isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
            series: <CircularSeries>[
              PieSeries<Revenue, String>(
                  dataSource: _revenueData,
                  xValueMapper: (Revenue data, _) => data.gastos,
                  yValueMapper: (Revenue data, _) => data.montos,
                  dataLabelSettings: const DataLabelSettings(
                      isVisible: true, textStyle: TextStyle(fontSize: 14)))
            ],
          ),
        ));
  }

  List<Revenue> getRevenueData() {
    final List<Revenue> revenueData = [
      Revenue("SuperMercado", 6516),
      Revenue("Farmacia", 1235),
      Revenue("Luz", 2000),
      Revenue("Renta", 4000),
    ];
    return revenueData;
  }
}
