import 'package:covid_tracking_app/base/theme/app_colors.dart';
import 'package:covid_tracking_app/base/theme/app_text_style.dart';
import 'package:covid_tracking_app/pages/home/models/continent_stats/continent_stats.dart';
import 'package:covid_tracking_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../base/extension/string.dart';
import '../../../../../res.dart';

class ContinentStatsWidget extends StatelessWidget {
  final ContinentStatsModel data;
  ContinentStatsWidget(this.data);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.COUNTRY_LIST, arguments: data),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 80,
            child: Image.asset(_getAssetPath(data.continent ?? "")),
          ),
          _buildInfo(context, color: AppColors.purple, label: "Infections", total: data.cases.toString().compactNumber),
          _buildInfo(context, color: AppColors.pink, label: "Deaths", total: data.deaths.toString().compactNumber),
          _buildInfo(context, color: AppColors.green, label: "Recovered", total: data.recovered.toString().compactNumber),
          _buildInfo(context, color: AppColors.yellow, label: "Critical", total: data.critical.toString().compactNumber),
        ],
      ),
    );
  }
}

_buildInfo(context, {required Color color, required String total, required String label}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        total,
        style: AppTextStyle.w700(context, size: 16, color: color),
      ),
      Text(
        label,
        style: AppTextStyle.w500(context, size: 14),
      ),
    ],
  );
}

_getAssetPath(String continentName) {
  switch (continentName) {
    case "North America":
      return Res.north_america;
    case "Asia":
      return Res.asia;
    case "South America":
      return Res.south_america;
    case "Europe":
      return Res.europe;
    case "Africa":
      return Res.africa;
    default:
      return Res.australia;
  }
}
