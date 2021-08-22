import 'package:covid_tracking_app/pages/search_country/presentations/controllers/search_country_controller.dart';
import 'package:covid_tracking_app/pages/search_country/repository/search_country_repository.dart';
import 'package:get/get.dart';

class SearchCountryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchCountryRepository>(() => SearchCountryRepositoryImpl());
    Get.lazyPut(() => SearchCountryController(Get.find(), Get.find()));
  }
}
