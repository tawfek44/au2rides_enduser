import 'package:freezed_annotation/freezed_annotation.dart';

class Failure {
  String? code;
  String? httpStatusCode;
  String? errorTitle;
  String message;
  String? errorUserMessage;
  String? aurtraceId;

  Failure(
      {required this.message,
       this.code,
       this.errorTitle,
       this.errorUserMessage,
       this.aurtraceId,
       this.httpStatusCode,
      });
}
