// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListNews _$_$_ListNewsFromJson(Map<String, dynamic> json) {
  return _$_ListNews(
    news: (json['news'] as List<dynamic>?)
        ?.map((e) => News.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ListNewsToJson(_$_ListNews instance) =>
    <String, dynamic>{
      'news': instance.news,
    };

_$_News _$_$_NewsFromJson(Map<String, dynamic> json) {
  return _$_News(
    newsId: json['newsId'] as String?,
    title: json['title'] as String?,
    link: json['link'] as String?,
    urlToImage: json['urlToImage'] as String?,
    imageInLocalStorage: json['imageInLocalStorage'] as String?,
    imageFileName: json['imageFileName'] as String?,
    pubDate: json['pubDate'] == null
        ? null
        : DateTime.parse(json['pubDate'] as String),
    content: json['content'] as String?,
    reference: json['reference'] as String?,
  );
}

Map<String, dynamic> _$_$_NewsToJson(_$_News instance) => <String, dynamic>{
      'newsId': instance.newsId,
      'title': instance.title,
      'link': instance.link,
      'urlToImage': instance.urlToImage,
      'imageInLocalStorage': instance.imageInLocalStorage,
      'imageFileName': instance.imageFileName,
      'pubDate': instance.pubDate?.toIso8601String(),
      'content': instance.content,
      'reference': instance.reference,
    };
