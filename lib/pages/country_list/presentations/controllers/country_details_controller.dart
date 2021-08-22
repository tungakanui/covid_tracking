import 'package:covid_tracking_app/base/common/utils/logger.dart';
import 'package:covid_tracking_app/pages/country_list/models/country_stats/country_stats_model.dart';
import 'package:covid_tracking_app/pages/country_list/models/historical_country_model/historical_country_model.dart';
import 'package:covid_tracking_app/pages/country_list/presentations/views/widgets/line_chart_widget.dart';
import 'package:covid_tracking_app/pages/country_list/repository/country_list_repository.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CountryDetailsController extends GetxController {
  final CountryListRepository _repository;
  CountryDetailsController(this._repository);

  final CountryStatsModel data = Get.arguments as CountryStatsModel;
  Rx<HistoricalCountryModel?> historicalData = Rx<HistoricalCountryModel?>(null);
  RxList<StatsData> statsData = RxList<StatsData>();
  RxString currentDropdownValue = "cases".obs;

  final dropdownValue = ["cases", "recovered", "deaths"];

  @override
  void onInit() {
    getHistoricalData();
    super.onInit();
  }

  Future<void> getHistoricalData() async {
    historicalData.value = await _repository.getHistoricalData(data.country ?? "");
    statsData.addAll(historicalData.value?.timeline?.cases?.entries.map((e) => StatsData(_formatDateTime(e.key), e.value)).toList() ?? []);
    // MLogger.wtf(statsData);
  }

  _formatDateTime(String date) {
    var inputFormat = DateFormat('MM/dd/yy');
    var inputDate = inputFormat.parse(date);

    var outputFormat = DateFormat('dd/MM');
    print(outputFormat.format(inputDate));
    return outputFormat.format(inputDate);
  }

  void onChangeDropdown(String? newVal) {
    currentDropdownValue.value = newVal ?? "cases";
    statsData.clear();
    if (newVal == "recovered")
      statsData.addAll(historicalData.value?.timeline?.recovered?.entries.map((e) => StatsData(_formatDateTime(e.key), e.value)).toList() ?? []);
    else if (newVal == "deaths")
      statsData.addAll(historicalData.value?.timeline?.deaths?.entries.map((e) => StatsData(_formatDateTime(e.key), e.value)).toList() ?? []);
    else
      statsData.addAll(historicalData.value?.timeline?.cases?.entries.map((e) => StatsData(_formatDateTime(e.key), e.value)).toList() ?? []);
  }
}
