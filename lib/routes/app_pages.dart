
import 'package:covid_tracking_app/base/widgets/web_view.dart';
import 'package:covid_tracking_app/pages/country_list/presentations/bindings/country_list_bindings.dart';
import 'package:covid_tracking_app/pages/country_list/presentations/views/country_details_page.dart';
import 'package:covid_tracking_app/pages/country_list/presentations/views/country_list_page.dart';
import 'package:covid_tracking_app/pages/home/presentations/views/home_page.dart';
import 'package:covid_tracking_app/pages/home_root/bindings/home_root_binding.dart';
import 'package:covid_tracking_app/pages/home_root/presentation/views/home_root_screen.dart';
import 'package:covid_tracking_app/pages/search_country/bindings/search_country_bindings.dart';
import 'package:covid_tracking_app/pages/search_country/presentations/views/search_country_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.HOME_ROOT;
  static final routes = [
    GetPage(
      transition: Transition.rightToLeft,
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeRootBinding(),
    ),
    GetPage(
        name: Routes.WEB_VIEW,
        page: () => InAppWebViewScreen(),
        maintainState: false,
        transitionDuration: const Duration(milliseconds: 200),
        transition: Transition.rightToLeft),
    GetPage(
      transition: Transition.rightToLeft,
      name: Routes.HOME_ROOT,
      page: () => HomeRootScreen(),
      binding: HomeRootBinding(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: Routes.HOME_ROOT,
      page: () => HomeRootScreen(),
      binding: HomeRootBinding(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: Routes.COUNTRY_LIST,
      page: () => CountryListPage(),
      binding: CountryListBindings(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: Routes.COUNTRY_DETAILS,
      page: () => CountryDetailsPage(),
      binding: CountryListBindings(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: Routes.SEARCH_COUNTRY,
      page: () => SearchCountryPage(),
      binding: SearchCountryBindings(),
    ),
  ];
}