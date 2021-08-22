import 'package:covid_tracking_app/pages/country_list/models/country_stats/country_stats_model.dart';
import 'package:covid_tracking_app/pages/country_list/presentations/views/widgets/line_chart_widget.dart';
import 'package:covid_tracking_app/pages/country_list/repository/country_list_repository.dart';
import 'package:covid_tracking_app/pages/home/models/continent_stats/continent_stats.dart';
import 'package:get/get.dart';

class CountryListController extends GetxController{
  final CountryListRepository _repository;
  CountryListController(this._repository);
  final ContinentStatsModel data = Get.arguments as ContinentStatsModel;
  RxList<CountryStatsModel> countriesStats = RxList<CountryStatsModel>();

  RxBool isLoading = true.obs;

  @override
  void onInit() {
    getCountryStats();
    super.onInit();
  }

  Future<void> getCountryStats() async {
    var res =  await _repository.getCountriesStats(data.countries??[]);
    countriesStats.addAll(res);
    isLoading.value = false;
  }
}