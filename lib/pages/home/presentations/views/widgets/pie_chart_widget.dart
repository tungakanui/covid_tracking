import 'package:covid_tracking_app/pages/home/models/pie_chart_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartWidget extends StatelessWidget {
  final List<PieChartModel> chartData;
  PieChartWidget(this.chartData);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height/ 3,
      child: SfCircularChart(
        tooltipBehavior: TooltipBehavior(
          enable: true,
          format: 'point.y%',
          header: 'Percent',
        ),
        legend: Legend(isVisible: true),
        series: <CircularSeries>[
          // Render pie chart
          DoughnutSeries<PieChartModel, String>(
            dataSource: chartData,
            pointColorMapper: (PieChartModel data, _) => data.color,
            xValueMapper: (PieChartModel data, _) => data.x,
            yValueMapper: (PieChartModel data, _) => data.y,
            groupMode: CircularChartGroupMode.point,
            enableTooltip: true,
            radius: "70%",
          )
        ],
      ),
    );
  }
}
