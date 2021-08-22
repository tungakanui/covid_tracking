import 'package:covid_tracking_app/base/common/utils/logger.dart';
import 'package:covid_tracking_app/pages/news/models/list_news.dart';
import 'package:covid_tracking_app/pages/news/repository/news_repository.dart';
import 'package:get/get.dart';

class NewsController extends GetxController {
  final NewsRepository _repository;
  NewsController(this._repository);
  RxBool isLoading = true.obs;
  int page = 0;

  RxList<News> news = RxList<News>();

  @override
  void onInit() {
    getNews();
    super.onInit();
  }

  Future<void> getNews() async {
    var res = await _repository.getNews(page);
    news.addAll(res.news!);
    if (page == 0) isLoading.value = false;
    page += 1;
  }
}
