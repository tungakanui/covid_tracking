import 'package:flutter/material.dart';

class PieChartModel {
  PieChartModel(this.x, this.y, {required this.color});
  final String x;
  final double y;
  final Color color;
}