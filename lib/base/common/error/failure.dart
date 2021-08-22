import 'package:freezed_annotation/freezed_annotation.dart';

import 'exceptions.dart';

part 'failure.freezed.dart';

abstract class Failure {}

@freezed
class CommonFailure extends Failure with _$CommonFailure {
  const factory CommonFailure.serverFailure() = ServerFailure;
  const factory CommonFailure.cacheFailure() = CacheFailure;
  const factory CommonFailure.noInternetFailure() = NoInternetFailure;
  const factory CommonFailure.apiFailure(String message) = ApiFailure;
  const factory CommonFailure.serverValidationFailure(
      ServerValidationException e) = ServerValidationFailure;
  const factory CommonFailure.timeoutFailure() = TimeoutFailure;

  factory CommonFailure.fromException(Exception e) {
    if (e.runtimeType.toString() == 'TimeoutException') {
      return TimeoutFailure();
    } else if (e.runtimeType.toString() == 'ServerValidationException') {
      return ServerValidationFailure((e as ServerValidationException));
    } else
      return ServerFailure();
  }
}

@freezed
class ValueFailure<T> extends Failure with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = ListTooLong<T>;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidPhoneNumber({
    required T failedValue,
  }) = InvalidPhoneNumber<T>;
  const factory ValueFailure.invalidEmailOrPhoneNumber({
    required T failedValue,
  }) = InvalidEmailOrPhoneNumber<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
}
