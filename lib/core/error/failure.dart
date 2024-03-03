import 'package:freezed_annotation/freezed_annotation.dart';

class Failure {
  String? code;
  int? httpStatusCode;
  String? errorTitle;
  String? message;
  String? errorUserMessage;
  String? aurtraceId;

  Failure(
      { this.message,
       this.code,
       this.errorTitle,
       this.errorUserMessage,
       this.aurtraceId,
       this.httpStatusCode,
      });
}
