import 'package:covid_tracking_app/pages/home/models/continent_stats/continent_stats.dart';
import 'package:covid_tracking_app/pages/home/models/world_stats/world_stats.dart';
import 'package:covid_tracking_app/pages/home/repository/home_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepository _repository;
  HomeController(this._repository);
   Rx<WorldStatsModel?> worldStats = Rx<WorldStatsModel?>(null);
  Rx<List<ContinentStatsModel>?> continentsStats = Rx<List<ContinentStatsModel>?>(null);
  @override
  void onInit() {
    getWorldStats();
    getContinentsStats();
    print("RUNNED");
    super.onInit();
  }

  Future<void> getWorldStats() async{
    worldStats.value = await _repository.getWorldStats();
    print(worldStats);
  }

  Future<void> getContinentsStats() async{
    continentsStats.value = await _repository.getContinentStats();
    print(continentsStats);
  }
}