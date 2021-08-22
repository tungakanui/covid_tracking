import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../error/failure.dart';

class ApiResponseWrapper<T> {
  final int? status;
  final String message;
  final Map<String, dynamic> data;
  ApiResponseWrapper({
     this.status,
    this.message = "",
    this.data = const {},
  });

  factory ApiResponseWrapper.fromJson(Map<String, dynamic> json) =>
      ApiResponseWrapper(
        status: json["status"] ?? "",
        message: json["message"] ?? "",
        data: json["data"] ?? null,
      );

  Map<String, dynamic> toJson() => {
    "status": this.status,
    "message": message,
    "data": jsonEncode(data),
  };

  bool isSuccess() => this.status == 1;
  bool isFailed() => this.status == 0;
  bool isError() => this.status == -1;

  Either<Failure, T> getFailure() {
    if (this.isFailed()) {
      return left(CommonFailure.apiFailure(this.message));
    } else {
      return left(const CommonFailure.serverFailure());
    }
  }

  @override
  String toString() =>
      'ApiResponseWrapper(status: $status, message: $message, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApiResponseWrapper<T> &&
        other.status == status &&
        other.message == message &&
        mapEquals(other.data, data);
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ data.hashCode;
}
