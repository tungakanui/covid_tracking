import 'package:covid_tracking_app/base/common/http/api_path.dart';
import 'package:covid_tracking_app/base/common/http/auth_http_client.dart';
import 'package:covid_tracking_app/pages/country_list/models/country_stats/country_stats_model.dart';
import 'package:covid_tracking_app/pages/country_list/models/historical_country_model/historical_country_model.dart';

abstract class CountryListRepository {
  Future<List<CountryStatsModel>> getCountriesStats(List<String> countries);

  Future<CountryStatsModel> getCountryStats(String country);

  Future<HistoricalCountryModel> getHistoricalData(String country);
}

class CountryListRepositoryImpl extends CountryListRepository {
  final AuthHttpClient _client;
  CountryListRepositoryImpl(this._client);

  @override
  Future<List<CountryStatsModel>> getCountriesStats(List<String> countries) async {
    var res = await _client.getRequest(url: APIPath.COUNTRIES_STATS + '/' + countries.join(","));
    print(res);
    return (res as List<dynamic>).map((e) => CountryStatsModel.fromJson(e)).toList();
  }

  @override
  Future<HistoricalCountryModel> getHistoricalData(String country) async {
    var res = await _client.getRequest(url: APIPath.HISTORICAL_DATA + "/$country?lastdays=15");
    print(res);
    return HistoricalCountryModel.fromJson(res);
  }

  @override
  Future<CountryStatsModel> getCountryStats(String country)async {
    var res = await _client.getRequest(url: APIPath.COUNTRIES_STATS + '/' + country);
    print(res);
    return CountryStatsModel.fromJson(res);
  }
}
