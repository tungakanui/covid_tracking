import 'package:covid_tracking_app/base/theme/app_text_style.dart';
import 'package:covid_tracking_app/base/widgets/favorite_button.dart';
import 'package:covid_tracking_app/base/widgets/my_scaffold.dart';
import 'package:covid_tracking_app/base/widgets/no_border_textfield.dart';
import 'package:covid_tracking_app/pages/country_list/models/country_stats/country_stats_model.dart';
import 'package:covid_tracking_app/pages/home_root/presentation/controllers/home_root_controller.dart';
import 'package:covid_tracking_app/pages/search_country/models/country_code.dart';
import 'package:covid_tracking_app/pages/search_country/presentations/controllers/search_country_controller.dart';
import 'package:covid_tracking_app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

final List<String> _alphabet = List.generate(26, (i) => String.fromCharCode('A'.codeUnitAt(0) + i));

class SearchCountryPage extends GetWidget<SearchCountryController> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                Icon(Icons.search),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: NoBorderTextField(
                    onChanged: controller.onSearch,
                    hintText: "Enter country name",
                    controller: controller.searchController,
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Show Favorite Only",
                  style: AppTextStyle.w500(context, size: 16),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: controller.isShowFavoriteOnly.value,
                    onChanged: (val) {
                      controller.isShowFavoriteOnly.value = val;
                      controller.showFavorite();
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: Row(
              children: [
                Obx(
                  () => Expanded(
                    child: ScrollablePositionedList.builder(
                      itemCount: controller.filterList.length,
                      itemBuilder: (context, index) {
                        // controller.currentAlphabet.value = controller.filterList[index].name![0];
                        // controller.updateAlphabetOnScrolling(controller.filterList[index].name![0]);
                        return SearchItemWidget(
                          data: controller.filterList[index],
                        );
                      },
                      scrollDirection: Axis.vertical,
                      itemScrollController: controller.itemScrollController,
                      itemPositionsListener: controller.itemPositionsListener,
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  child: ListView.builder(
                    itemBuilder: (ctx, idx) => Center(
                      child: GestureDetector(
                        onTap: () => controller.onTabAlphabet(_alphabet[idx]),
                        child: Obx(
                          () => Container(
                            width: 30,
                            height: 30,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: controller.currentAlphabet.value == _alphabet[idx].toLowerCase() ? Colors.blue : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                _alphabet[idx],
                                style: AppTextStyle.w500(context, size: 14, color: controller.currentAlphabet.value == _alphabet[idx].toLowerCase() ? Colors.white : Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    itemCount: _alphabet.length,
                    scrollDirection: Axis.vertical,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchItemWidget extends StatelessWidget {
  final CountryCode data;
  SearchItemWidget({required this.data});
  final SearchCountryController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final CountryStatsModel arg = await _controller.getCountry(data.alpha2Code!);
        Get.toNamed(Routes.COUNTRY_DETAILS, arguments: arg);
      },
      child: Container(
        margin: data.isVisible ? EdgeInsets.symmetric(horizontal: 8, vertical: 8) : EdgeInsets.zero,
        child: data.isVisible
            ? Row(
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("flags/${data.alpha2Code?.toLowerCase()}.png"), fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      data.name ?? "",
                      style: AppTextStyle.w500(context, size: 16),
                    ),
                  ),
                  FavoriteButton(data.alpha2Code!),
                ],
              )
            : SizedBox.shrink(),
      ),
    );
  }
}
