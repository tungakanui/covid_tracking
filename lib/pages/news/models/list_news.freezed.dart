// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListNews _$ListNewsFromJson(Map<String, dynamic> json) {
  return _ListNews.fromJson(json);
}

/// @nodoc
class _$ListNewsTearOff {
  const _$ListNewsTearOff();

  _ListNews call({List<News>? news}) {
    return _ListNews(
      news: news,
    );
  }

  ListNews fromJson(Map<String, Object> json) {
    return ListNews.fromJson(json);
  }
}

/// @nodoc
const $ListNews = _$ListNewsTearOff();

/// @nodoc
mixin _$ListNews {
  List<News>? get news => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListNewsCopyWith<ListNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListNewsCopyWith<$Res> {
  factory $ListNewsCopyWith(ListNews value, $Res Function(ListNews) then) =
      _$ListNewsCopyWithImpl<$Res>;
  $Res call({List<News>? news});
}

/// @nodoc
class _$ListNewsCopyWithImpl<$Res> implements $ListNewsCopyWith<$Res> {
  _$ListNewsCopyWithImpl(this._value, this._then);

  final ListNews _value;
  // ignore: unused_field
  final $Res Function(ListNews) _then;

  @override
  $Res call({
    Object? news = freezed,
  }) {
    return _then(_value.copyWith(
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>?,
    ));
  }
}

/// @nodoc
abstract class _$ListNewsCopyWith<$Res> implements $ListNewsCopyWith<$Res> {
  factory _$ListNewsCopyWith(_ListNews value, $Res Function(_ListNews) then) =
      __$ListNewsCopyWithImpl<$Res>;
  @override
  $Res call({List<News>? news});
}

/// @nodoc
class __$ListNewsCopyWithImpl<$Res> extends _$ListNewsCopyWithImpl<$Res>
    implements _$ListNewsCopyWith<$Res> {
  __$ListNewsCopyWithImpl(_ListNews _value, $Res Function(_ListNews) _then)
      : super(_value, (v) => _then(v as _ListNews));

  @override
  _ListNews get _value => super._value as _ListNews;

  @override
  $Res call({
    Object? news = freezed,
  }) {
    return _then(_ListNews(
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListNews implements _ListNews {
  const _$_ListNews({this.news});

  factory _$_ListNews.fromJson(Map<String, dynamic> json) =>
      _$_$_ListNewsFromJson(json);

  @override
  final List<News>? news;

  @override
  String toString() {
    return 'ListNews(news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListNews &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(news);

  @JsonKey(ignore: true)
  @override
  _$ListNewsCopyWith<_ListNews> get copyWith =>
      __$ListNewsCopyWithImpl<_ListNews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ListNewsToJson(this);
  }
}

abstract class _ListNews implements ListNews {
  const factory _ListNews({List<News>? news}) = _$_ListNews;

  factory _ListNews.fromJson(Map<String, dynamic> json) = _$_ListNews.fromJson;

  @override
  List<News>? get news => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListNewsCopyWith<_ListNews> get copyWith =>
      throw _privateConstructorUsedError;
}

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
class _$NewsTearOff {
  const _$NewsTearOff();

  _News call(
      {String? newsId,
      String? title,
      String? link,
      String? urlToImage,
      String? imageInLocalStorage,
      String? imageFileName,
      DateTime? pubDate,
      String? content,
      String? reference}) {
    return _News(
      newsId: newsId,
      title: title,
      link: link,
      urlToImage: urlToImage,
      imageInLocalStorage: imageInLocalStorage,
      imageFileName: imageFileName,
      pubDate: pubDate,
      content: content,
      reference: reference,
    );
  }

  News fromJson(Map<String, Object> json) {
    return News.fromJson(json);
  }
}

/// @nodoc
const $News = _$NewsTearOff();

/// @nodoc
mixin _$News {
  String? get newsId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String? get imageInLocalStorage => throw _privateConstructorUsedError;
  String? get imageFileName => throw _privateConstructorUsedError;
  DateTime? get pubDate => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call(
      {String? newsId,
      String? title,
      String? link,
      String? urlToImage,
      String? imageInLocalStorage,
      String? imageFileName,
      DateTime? pubDate,
      String? content,
      String? reference});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object? newsId = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? urlToImage = freezed,
    Object? imageInLocalStorage = freezed,
    Object? imageFileName = freezed,
    Object? pubDate = freezed,
    Object? content = freezed,
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      newsId: newsId == freezed
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      imageInLocalStorage: imageInLocalStorage == freezed
          ? _value.imageInLocalStorage
          : imageInLocalStorage // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFileName: imageFileName == freezed
          ? _value.imageFileName
          : imageFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: pubDate == freezed
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) then) =
      __$NewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? newsId,
      String? title,
      String? link,
      String? urlToImage,
      String? imageInLocalStorage,
      String? imageFileName,
      DateTime? pubDate,
      String? content,
      String? reference});
}

/// @nodoc
class __$NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(_News _value, $Res Function(_News) _then)
      : super(_value, (v) => _then(v as _News));

  @override
  _News get _value => super._value as _News;

  @override
  $Res call({
    Object? newsId = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? urlToImage = freezed,
    Object? imageInLocalStorage = freezed,
    Object? imageFileName = freezed,
    Object? pubDate = freezed,
    Object? content = freezed,
    Object? reference = freezed,
  }) {
    return _then(_News(
      newsId: newsId == freezed
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      imageInLocalStorage: imageInLocalStorage == freezed
          ? _value.imageInLocalStorage
          : imageInLocalStorage // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFileName: imageFileName == freezed
          ? _value.imageFileName
          : imageFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: pubDate == freezed
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_News implements _News {
  const _$_News(
      {this.newsId,
      this.title,
      this.link,
      this.urlToImage,
      this.imageInLocalStorage,
      this.imageFileName,
      this.pubDate,
      this.content,
      this.reference});

  factory _$_News.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsFromJson(json);

  @override
  final String? newsId;
  @override
  final String? title;
  @override
  final String? link;
  @override
  final String? urlToImage;
  @override
  final String? imageInLocalStorage;
  @override
  final String? imageFileName;
  @override
  final DateTime? pubDate;
  @override
  final String? content;
  @override
  final String? reference;

  @override
  String toString() {
    return 'News(newsId: $newsId, title: $title, link: $link, urlToImage: $urlToImage, imageInLocalStorage: $imageInLocalStorage, imageFileName: $imageFileName, pubDate: $pubDate, content: $content, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _News &&
            (identical(other.newsId, newsId) ||
                const DeepCollectionEquality().equals(other.newsId, newsId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.urlToImage, urlToImage) ||
                const DeepCollectionEquality()
                    .equals(other.urlToImage, urlToImage)) &&
            (identical(other.imageInLocalStorage, imageInLocalStorage) ||
                const DeepCollectionEquality()
                    .equals(other.imageInLocalStorage, imageInLocalStorage)) &&
            (identical(other.imageFileName, imageFileName) ||
                const DeepCollectionEquality()
                    .equals(other.imageFileName, imageFileName)) &&
            (identical(other.pubDate, pubDate) ||
                const DeepCollectionEquality()
                    .equals(other.pubDate, pubDate)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(urlToImage) ^
      const DeepCollectionEquality().hash(imageInLocalStorage) ^
      const DeepCollectionEquality().hash(imageFileName) ^
      const DeepCollectionEquality().hash(pubDate) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(reference);

  @JsonKey(ignore: true)
  @override
  _$NewsCopyWith<_News> get copyWith =>
      __$NewsCopyWithImpl<_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsToJson(this);
  }
}

abstract class _News implements News {
  const factory _News(
      {String? newsId,
      String? title,
      String? link,
      String? urlToImage,
      String? imageInLocalStorage,
      String? imageFileName,
      DateTime? pubDate,
      String? content,
      String? reference}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  String? get newsId => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get link => throw _privateConstructorUsedError;
  @override
  String? get urlToImage => throw _privateConstructorUsedError;
  @override
  String? get imageInLocalStorage => throw _privateConstructorUsedError;
  @override
  String? get imageFileName => throw _privateConstructorUsedError;
  @override
  DateTime? get pubDate => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get reference => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsCopyWith<_News> get copyWith => throw _privateConstructorUsedError;
}
