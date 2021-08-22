import 'package:covid_tracking_app/base/common/http/api_path.dart';
import 'package:covid_tracking_app/base/common/http/auth_http_client.dart';
import 'package:covid_tracking_app/base/common/utils/logger.dart';
import 'package:covid_tracking_app/pages/home/models/continent_stats/continent_stats.dart';
import 'package:covid_tracking_app/pages/home/models/world_stats/world_stats.dart';

abstract class HomeRepository{
  Future<WorldStatsModel> getWorldStats();
  Future<List<ContinentStatsModel>> getContinentStats();
}

class HomeRepositoryImpl extends HomeRepository{
  final AuthHttpClient client;
  HomeRepositoryImpl(this.client);
  @override
  Future<WorldStatsModel> getWorldStats()  async {
    var res = await client.getRequest(url: APIPath.WORLD_STATS);
    return WorldStatsModel.fromJson(res);
  }

  @override
  Future<List<ContinentStatsModel>> getContinentStats() async {
    var res = await client.getRequest(url: APIPath.CONTINENT_STATS);
    return (res as List<dynamic>).map((e) => ContinentStatsModel.fromJson(e)).toList();
  }
}