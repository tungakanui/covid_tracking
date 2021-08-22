import 'package:covid_tracking_app/base/common/constants.dart';
import 'package:covid_tracking_app/base/common/utils/logger.dart';
import 'package:covid_tracking_app/shared_preference/local_storage.dart';
import 'package:get/get.dart';

class HomeRootController extends GetxController {
  final LocalStorageImpl localStorage = Get.find();
  final _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  RxList<String> favoriteCountries = RxList<String>();

  @override
  void onInit() {
    getFavoriteCountries();
    super.onInit();
  }

  Future<void> getFavoriteCountries() async {
    final String _f = await localStorage.get(PrefKey.FAVORITE_COUNTRIES) ?? "";
    MLogger.i(_f);
    favoriteCountries.addAll(_f.split(" "));
  }

  setCurrentIndex(int index) {
    _currentIndex.value = index;
  }

  Future<void> toggleFav(String countryCode) async {
    if (favoriteCountries.contains(countryCode.toLowerCase()))
      favoriteCountries.remove(countryCode.toLowerCase());
    else
      favoriteCountries.add(countryCode.toLowerCase());
    MLogger.i(favoriteCountries);
    await localStorage.save(PrefKey.FAVORITE_COUNTRIES, favoriteCountries.join(" "));
  }

  @override
  void onClose() {
    localStorage.save(PrefKey.FAVORITE_COUNTRIES, favoriteCountries.join(" "));
    MLogger.i(favoriteCountries);
    super.onClose();
  }
}
