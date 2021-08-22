import 'package:covid_tracking_app/base/theme/app_colors.dart';
import 'package:covid_tracking_app/base/theme/app_text_style.dart';
import 'package:covid_tracking_app/pages/country_list/models/country_stats/country_stats_model.dart';
import 'package:covid_tracking_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../base/extension/string.dart';

class CountryStatsWidget extends StatelessWidget {
  final CountryStatsModel data;
  CountryStatsWidget(this.data);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.COUNTRY_DETAILS, arguments: data),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 80,
            child: Image.asset("flags/${data.countryInfo?.iso2?.toLowerCase()}.png")
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