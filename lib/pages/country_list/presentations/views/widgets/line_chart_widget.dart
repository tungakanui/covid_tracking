import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartWidget extends StatelessWidget {
  final List<StatsData> data;
  LineChartWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      trackballBehavior: TrackballBehavior(
          // Enables the trackball
          enable: true,
          tooltipSettings: InteractiveTooltip(enable: true, color: Colors.red)),
      zoomPanBehavior: ZoomPanBehavior(
          // Enables pinch zooming
          enablePinching: true),
      series: <ChartSeries>[
        // Renders line chart
        FastLineSeries<StatsData, String>(
            dataSource: data,
            xValueMapper: (StatsData data, _) => data.day,
            yValueMapper: (StatsData data, _) => data.cases),
      ],
    );
  }
}

class StatsData {
  StatsData(this.day, this.cases);
  final String day;
  final int cases;
}
