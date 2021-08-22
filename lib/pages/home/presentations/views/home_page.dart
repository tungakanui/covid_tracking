import 'package:covid_tracking_app/base/theme/app_colors.dart';
import 'package:covid_tracking_app/base/theme/app_text_style.dart';
import 'package:covid_tracking_app/base/widgets/my_scaffold.dart';
import 'package:covid_tracking_app/pages/home/models/continent_stats/continent_stats.dart';
import 'package:covid_tracking_app/pages/home/models/pie_chart_model.dart';
import 'package:covid_tracking_app/pages/home/presentations/controllers/home_controller.dart';
import 'package:covid_tracking_app/pages/home/presentations/views/widgets/widgets.dart';
import 'package:covid_tracking_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../res.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "World Update",
                    style: AppTextStyle.w900(context, size: 28),
                  ),
                  Spacer(),
                  IconButton(onPressed: () => Get.toNamed(Routes.SEARCH_COUNTRY), icon: Icon(Icons.search)),
                ],
              ),
            ),
            // Obx(
            //   () => PieChartWidget([
            //     PieChartModel("Active", (controller.worldStats.value?.active ?? 0) / (controller.worldStats.value?.cases ?? 0) * 100,
            //         color: AppColors.purple),
            //     PieChartModel("Recovered", (controller.worldStats.value?.recovered ?? 0) / (controller.worldStats.value?.cases ?? 0) * 100,
            //         color: AppColors.green),
            //     PieChartModel("Deaths", (controller.worldStats.value?.deaths ?? 0) / (controller.worldStats.value?.cases ?? 0) * 100,
            //         color: AppColors.pink),
            //   ]),
            // ),
            const SizedBox(
              height: 8,
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StatsWidget(
                    color: AppColors.blue,
                    backgroundColor: AppColors.lightBlue,
                    total: controller.worldStats.value?.cases ?? 0,
                    label: "TOTAL CASE",
                  ),
                  StatsWidget(
                    color: AppColors.orange,
                    backgroundColor: AppColors.lightOrange,
                    total: controller.worldStats.value?.affectedCountries ?? 0,
                    label: "AFFECTED COUNTRIES",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StatsWidget(
                    color: AppColors.purple,
                    backgroundColor: AppColors.lightPurple,
                    increase: controller.worldStats.value?.todayCases ?? 0,
                    total: controller.worldStats.value?.active ?? 0,
                    label: "Active",
                  ),
                  StatsWidget(
                    color: AppColors.pink,
                    backgroundColor: AppColors.lightPink,
                    increase: controller.worldStats.value?.todayDeaths ?? 0,
                    total: controller.worldStats.value?.deaths ?? 0,
                    label: "Deaths",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StatsWidget(
                    color: AppColors.green,
                    backgroundColor: AppColors.lightGreen,
                    total: controller.worldStats.value?.recovered ?? 0,
                    label: "recoveries",
                  ),
                  StatsWidget(
                    color: AppColors.yellow,
                    backgroundColor: AppColors.lightYellow,
                    total: controller.worldStats.value?.critical ?? 0,
                    label: "critical",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Continents",
                style: AppTextStyle.w900(context, size: 28),
              ),
            ),
            Obx(
              () => Column(
                mainAxisSize: MainAxisSize.min,
                children: [...?controller.continentsStats.value?.map((e) => ContinentStatsWidget(e)).toList()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
