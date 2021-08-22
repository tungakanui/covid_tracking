import 'package:covid_tracking_app/base/theme/app_text_style.dart';
import 'package:covid_tracking_app/base/widgets/my_scaffold.dart';
import 'package:covid_tracking_app/pages/country_list/presentations/controllers/country_list_controller.dart';
import 'package:covid_tracking_app/pages/country_list/presentations/views/widgets/country_stats_widget.dart';
import 'package:covid_tracking_app/pages/home/presentations/views/widgets/continent_stats_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryListPage extends GetWidget<CountryListController> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text( controller.data.continent??"", style: AppTextStyle.w700(context, size: 16),),
        elevation: 0,
        centerTitle: true,
      ),
        body: Obx(
            ()=> !controller.isLoading.value ? Column(
      children: [
          Obx(
            () => Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext ctx, index) => CountryStatsWidget(controller.countriesStats[index]),
                itemCount: controller.countriesStats.length,
              ),
            ),
          ),
      ],
    ) : Center(child: CircularProgressIndicator(),),
        ));
  }
}
