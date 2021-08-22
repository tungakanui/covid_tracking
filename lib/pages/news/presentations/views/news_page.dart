import 'package:covid_tracking_app/base/theme/app_text_style.dart';
import 'package:covid_tracking_app/base/widgets/my_scaffold.dart';
import 'package:covid_tracking_app/base/widgets/web_view.dart';
import 'package:covid_tracking_app/pages/news/models/list_news.dart';
import 'package:covid_tracking_app/pages/news/presentations/controllers/news_controller.dart';
import 'package:covid_tracking_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NewsPage extends GetWidget<NewsController> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Obx(
        () => !controller.isLoading.value
            ? Column(
                children: [
                  Expanded(
                    child: Obx(
                      () => ScrollablePositionedList.separated(
                        separatorBuilder: (ctx, index) => Divider(),
                        itemCount: controller.news.length,
                        itemBuilder: (ctx, index) {
                          if (index == controller.news.length - 2) {
                            controller.getNews();
                          }
                          return NewsItem(controller.news[index]);
                        },
                      ),
                    ),
                  )
                ],
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final News news;
  NewsItem(this.news);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final args = WebViewBundle(url: news.link!, title: 'News');
        Get.toNamed(Routes.WEB_VIEW, arguments: args);
      },
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            height: 80,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(news.urlToImage ?? ""), fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: Text(
            news.title ?? "",
            style: AppTextStyle.w700(context, size: 16),
          )),
        ],
      ),
    );
  }
}
