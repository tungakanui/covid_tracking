import 'package:covid_tracking_app/base/common/http/auth_http_client.dart';
import 'package:covid_tracking_app/shared_preference/local_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class MainBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthHttpClient(client: http.Client()));
    Get.lazyPut(() => LocalStorageImpl(), fenix: true);
  }

}