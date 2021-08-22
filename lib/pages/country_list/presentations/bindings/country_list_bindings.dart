import 'package:covid_tracking_app/pages/country_list/presentations/controllers/country_details_controller.dart';
import 'package:covid_tracking_app/pages/country_list/presentations/controllers/country_list_controller.dart';
import 'package:covid_tracking_app/pages/country_list/repository/country_list_repository.dart';
import 'package:get/get.dart';

class CountryListBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountryListRepository>(() => CountryListRepositoryImpl(Get.find()), fenix: true);
    Get.lazyPut(() => CountryListController(Get.find()));
    Get.lazyPut(() => CountryDetailsController(Get.find()));
  }

}