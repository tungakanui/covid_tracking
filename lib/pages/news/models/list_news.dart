import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_news.freezed.dart';
part 'list_news.g.dart';

@freezed
abstract class ListNews with _$ListNews {
  const factory ListNews({
    List<News>? news,
  }) = _ListNews;

  factory ListNews.fromJson(Map<String, dynamic> json) => _$ListNewsFromJson(json);
}

@freezed
abstract class News with _$News {
  const factory News({
    String? newsId,
    String? title,
    String? link,
    String? urlToImage,
    String? imageInLocalStorage,
    String? imageFileName,
    DateTime? pubDate,
    String? content,
    String? reference,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
