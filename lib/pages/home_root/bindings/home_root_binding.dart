import 'package:covid_tracking_app/pages/country_list/repository/country_list_repository.dart';
import 'package:covid_tracking_app/pages/home/presentations/controllers/home_controller.dart';
import 'package:covid_tracking_app/pages/home/repository/home_repository.dart';
import 'package:covid_tracking_app/pages/news/presentations/controllers/news_controller.dart';
import 'package:covid_tracking_app/pages/news/repository/news_repository.dart';
import 'package:covid_tracking_app/shared_preference/local_storage.dart';
import 'package:get/get.dart';

import '../presentation/controllers/home_root_controller.dart';

class HomeRootBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<IHomeRepository>(() => HomeRootRepository(apiClient: Get.find()));
    // Get.lazyPut<IConversationRepository>(() => ConversationRepository(Get.find()));
    // Get.lazyPut<IContactRepository>(() => ContactRepository(Get.find(), Get.find(), Get.find()));
    // Get.lazyPut(() => ConversationController(Get.find()));
    // Get.lazyPut(() => ContactController(Get.find()));
    Get.lazyPut<CountryListRepository>(() => CountryListRepositoryImpl(Get.find()), fenix: true);
    Get.lazyPut<HomeRepository>(() => HomeRepositoryImpl(Get.find()));
    Get.lazyPut<NewsRepository>(() => NewsRepositoryImpl(Get.find()));
    Get.lazyPut(() => NewsController(Get.find()));
    Get.lazyPut(() => HomeController(Get.find()));
    Get.lazyPut(() => HomeRootController());
  }
}
