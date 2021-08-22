import 'package:covid_tracking_app/base/common/constants.dart';
import 'package:covid_tracking_app/base/common/http/api_path.dart';
import 'package:covid_tracking_app/base/common/http/auth_http_client.dart';
import 'package:covid_tracking_app/base/common/utils/logger.dart';
import 'package:covid_tracking_app/pages/news/models/list_news.dart';

abstract class NewsRepository {
  Future<ListNews> getNews(int page);
}

class NewsRepositoryImpl extends NewsRepository {
  final AuthHttpClient _client;
  NewsRepositoryImpl(this._client);

  @override
  Future<ListNews> getNews(int page) async {
    var res = await _client.getRequest(
      url: APIPath.NEWS + page.toString(),
      defaultHeaders: newsHeader,
    );
    //MLogger.i(APIPath.NEWS + page.toString());
    return ListNews.fromJson(res);
  }
}
