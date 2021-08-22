import 'package:covid_tracking_app/base/common/utils/logger.dart';
import 'package:covid_tracking_app/pages/country_list/models/country_stats/country_stats_model.dart';
import 'package:covid_tracking_app/pages/country_list/repository/country_list_repository.dart';
import 'package:covid_tracking_app/pages/home_root/presentation/controllers/home_root_controller.dart';
import 'package:covid_tracking_app/pages/search_country/models/country_code.dart';
import 'package:covid_tracking_app/pages/search_country/repository/search_country_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SearchCountryController extends GetxController {
  final SearchCountryRepository _repository;
  final CountryListRepository _countryListRepository;
  SearchCountryController(this._repository, this._countryListRepository);

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  final TextEditingController searchController = TextEditingController();

  RxString currentAlphabet = "A".obs;

  RxList<CountryCode> filterList = RxList<CountryCode>();
  List<CountryCode> listCountries = [];
  RxBool isShowFavoriteOnly = false.obs;

  final HomeRootController _controller = Get.find();

  @override
  void onInit() {
    getCountries();
    itemPositionsListener.itemPositions.addListener(() {
      currentAlphabet.value = filterList[itemPositionsListener.itemPositions.value.first.index].name![0].toLowerCase();
    });
    super.onInit();
  }

  Future<void> getCountries() async {
    var res = await _repository.getCountriesInfo();
    listCountries.addAll(res);
    filterList.addAll(listCountries);
  }

  void onTabAlphabet(String character) {
    currentAlphabet.value = character.toLowerCase();
    final _index = filterList.indexWhere((element) => element.name![0].toLowerCase() == character.toLowerCase());
    if (_index != -1) itemScrollController.scrollTo(index: _index, duration: Duration(microseconds: 500), curve: Curves.easeInOutCubic);
  }

  void showFavorite() {
    List<CountryCode>? _filterList;
    if (isShowFavoriteOnly.value) {
      _filterList = listCountries.map((e) {
        if (_controller.favoriteCountries.contains(e.alpha2Code!.toLowerCase()) &&
            (e.name ?? "").toLowerCase().contains(searchController.text.toLowerCase())) {
          return e.copyWith(isVisible: true);
        }
        return e.copyWith(isVisible: false);
      }).toList();
    } else {
      _filterList = listCountries.map((e) {
        if ((e.name ?? "").toLowerCase().contains(searchController.text.toLowerCase())) {
          return e.copyWith(isVisible: true);
        }
        return e.copyWith(isVisible: false);
      }).toList();
    }
    filterList.clear();
    filterList.addAll(_filterList);
  }

  void onSearch(String val) {
    List<CountryCode>? _filterList = listCountries.map((e) {
      if ((e.name ?? "").toLowerCase().contains(val.toLowerCase())) {
        return e.copyWith(isVisible: true);
      }
      return e.copyWith(isVisible: false);
    }).toList();
    filterList.clear();
    filterList.addAll(_filterList);
  }

  Future<CountryStatsModel> getCountry(String code2) async {
    var res = await _countryListRepository.getCountryStats(code2);
    return res;
  }
}
