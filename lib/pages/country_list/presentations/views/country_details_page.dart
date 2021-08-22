import 'package:covid_tracking_app/base/theme/app_colors.dart';
import 'package:covid_tracking_app/base/theme/app_text_style.dart';
import 'package:covid_tracking_app/base/widgets/favorite_button.dart';
import 'package:covid_tracking_app/base/widgets/my_scaffold.dart';
import 'package:covid_tracking_app/pages/country_list/presentations/controllers/country_details_controller.dart';
import 'package:covid_tracking_app/pages/country_list/presentations/views/widgets/line_chart_widget.dart';
import 'package:covid_tracking_app/pages/home/models/pie_chart_model.dart';
import 'package:covid_tracking_app/pages/home/presentations/views/widgets/pie_chart_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../base/extension/string.dart';

class CountryDetailsPage extends GetWidget<CountryDetailsController> {
  const CountryDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text(
          controller.data.country ?? "",
          style: AppTextStyle.w700(context, size: 16),
        ),
        elevation: 0,
        centerTitle: true,
        actions: [
          FavoriteButton(controller.data.countryInfo!.iso2!),
          const SizedBox(width: 8,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Overview",
                style: AppTextStyle.w900(context, size: 22),
              ),
            ),
            PieChartWidget([
              PieChartModel("Active", (controller.data.active ?? 0) / (controller.data.cases ?? 0) * 100, color: AppColors.purple),
              PieChartModel("Recovered", (controller.data.recovered ?? 0) / (controller.data.cases ?? 0) * 100, color: AppColors.green),
              PieChartModel("Deaths", (controller.data.deaths ?? 0) / (controller.data.cases ?? 0) * 100, color: AppColors.pink),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                "Confirmed cases",
                style: AppTextStyle.w500(context, size: 16, color: AppColors.purple),
              ),
            ),
            _infoRow(context, controller.data.todayCases.toString().formatNoSymbolCurrency, controller.data.casesPerOneMillion.toString(),
                controller.data.cases.toString().formatNoSymbolCurrency),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                "Recovered cases",
                style: AppTextStyle.w500(context, size: 16, color: AppColors.green),
              ),
            ),
            _infoRow(context, controller.data.todayRecovered.toString().formatNoSymbolCurrency, controller.data.recoveredPerOneMillion.toString(),
                controller.data.recovered.toString().formatNoSymbolCurrency),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                "Deaths",
                style: AppTextStyle.w500(context, size: 16, color: AppColors.pink),
              ),
            ),
            _infoRow(context, controller.data.todayDeaths.toString().formatNoSymbolCurrency, controller.data.deathsPerOneMillion.toString(),
                controller.data.deaths.toString().formatNoSymbolCurrency),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "Last 15 days",
                    style: AppTextStyle.w900(context, size: 22),
                  ),
                  Spacer(),
                  Obx(()
                    => DropdownButton<String>(
                      value: controller.currentDropdownValue.value,
                      items: [
                        DropdownMenuItem(
                          child: Text(controller.dropdownValue[0]),
                          value: controller.dropdownValue[0],
                        ),
                        DropdownMenuItem(
                          child:  Text(controller.dropdownValue[1]),
                          value: controller.dropdownValue[1],
                        ),
                        DropdownMenuItem(
                          child: Text(controller.dropdownValue[2]),
                          value: controller.dropdownValue[2],
                        ),
                      ],
                      onChanged:(newVal) => controller.onChangeDropdown(newVal),
                    ),
                  )
                ],
              ),
            ),
            Obx(() => controller.statsData.isNotEmpty ? LineChartWidget(controller.statsData) : SizedBox.shrink()),
            const SizedBox(height: 36,),
          ],
        ),
      ),
    );
  }
}

_infoRow(context, String val1, String val2, String val3) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "New",
            style: AppTextStyle.normal(context, size: 14),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            val1,
            style: AppTextStyle.w700(context, size: 14),
          ),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Per 1M",
            style: AppTextStyle.normal(context, size: 14),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            val2,
            style: AppTextStyle.w700(context, size: 14),
          ),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Total",
            style: AppTextStyle.normal(context, size: 14, color: Colors.black87),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            val3,
            style: AppTextStyle.w700(context, size: 14),
          ),
        ],
      )
    ],
  );
}
