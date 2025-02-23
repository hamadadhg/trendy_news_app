import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessageInFailuresClass;
  Failures({
    required this.errorMessageInFailuresClass,
  });
}

class NewsServerFailure extends Failures {
  NewsServerFailure({
    required super.errorMessageInFailuresClass,
  });
  factory NewsServerFailure.fromDioException(
      {required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return NewsServerFailure(
          errorMessageInFailuresClass:
              'Error: the connection is take time out, Please try again',
        );
      case DioExceptionType.sendTimeout:
        return NewsServerFailure(
          errorMessageInFailuresClass:
              'Error: the send is take time out, Please try again',
        );
      case DioExceptionType.receiveTimeout:
        return NewsServerFailure(
          errorMessageInFailuresClass:
              'Error: the receive is take time out, Please try again',
        );
      case DioExceptionType.badCertificate:
        return NewsServerFailure(
          errorMessageInFailuresClass:
              'Error: there is a bad certification the connection is insecure',
        );
      case DioExceptionType.badResponse:
        return NewsServerFailure.fromBadResponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return NewsServerFailure(
          errorMessageInFailuresClass: 'Error: the request was cancelled',
        );
      case DioExceptionType.connectionError:
        return NewsServerFailure.fromNetwork(
          dioException: dioException,
        );
      case DioExceptionType.unknown:
        return NewsServerFailure(
          errorMessageInFailuresClass: 'Error: unknown error occured',
        );
    }
  }
  factory NewsServerFailure.fromNetwork({required DioException dioException}) {
    if (dioException.message!.contains('SocketException')) {
      return NewsServerFailure(
        errorMessageInFailuresClass:
            'Error: no internet, check from your network',
      );
    } else {
      return NewsServerFailure(
        errorMessageInFailuresClass:
            'Error: unexpected error, please try later',
      );
    }
  }
  factory NewsServerFailure.fromBadResponse(
      {required int statusCode, required Map<String, dynamic> response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return NewsServerFailure(
        errorMessageInFailuresClass: 'Error: ${response['results']['message']}',
      );
    } else if (statusCode == 404) {
      return NewsServerFailure(
        errorMessageInFailuresClass: 'Error: you search on thing not found',
      );
    } else if (statusCode == 500) {
      return NewsServerFailure(
        errorMessageInFailuresClass:
            'Error: error from internal server, Please try later',
      );
    } else {
      return NewsServerFailure(
        errorMessageInFailuresClass:
            'Error: there was an error, Please try again',
      );
    }
  }
}

class VideosServerFailure extends Failures {
  VideosServerFailure({
    required super.errorMessageInFailuresClass,
  });
  factory VideosServerFailure.fromDioException(
      {required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return VideosServerFailure(
          errorMessageInFailuresClass:
              'Error: the connection is take time out, Please try again',
        );
      case DioExceptionType.sendTimeout:
        return VideosServerFailure(
          errorMessageInFailuresClass:
              'Error: the send is take time out, Please try again',
        );
      case DioExceptionType.receiveTimeout:
        return VideosServerFailure(
          errorMessageInFailuresClass:
              'Error: the receive is take time out, Please try again',
        );
      case DioExceptionType.badCertificate:
        return VideosServerFailure(
          errorMessageInFailuresClass:
              'Error: there is a bad certification the connection is insecure',
        );
      case DioExceptionType.badResponse:
        return VideosServerFailure.fromBadResponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return VideosServerFailure(
          errorMessageInFailuresClass: 'Error: the request was cancelled',
        );
      case DioExceptionType.connectionError:
        return VideosServerFailure.fromNetwork(
          dioException: dioException,
        );
      case DioExceptionType.unknown:
        return VideosServerFailure(
          errorMessageInFailuresClass: 'Error: unknown error occured',
        );
    }
  }
  factory VideosServerFailure.fromNetwork(
      {required DioException dioException}) {
    if (dioException.message!.contains('SocketException')) {
      return VideosServerFailure(
        errorMessageInFailuresClass:
            'Error: no internet, check from your network',
      );
    } else {
      return VideosServerFailure(
        errorMessageInFailuresClass:
            'Error: unexpected error, please try later',
      );
    }
  }
  factory VideosServerFailure.fromBadResponse(
      {required int statusCode, required Map<String, dynamic> response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return VideosServerFailure(
        errorMessageInFailuresClass:
            'Error: you exceeded the maximum numbre of videos for this day, so now go to your study or work and back tomorrow',
      );
    } else if (statusCode == 404) {
      return VideosServerFailure(
        errorMessageInFailuresClass: 'Error: you search on thing not found',
      );
    } else if (statusCode == 500) {
      return VideosServerFailure(
        errorMessageInFailuresClass:
            'Error: error from internal server, Please try later',
      );
    } else {
      return VideosServerFailure(
        errorMessageInFailuresClass:
            'Error: there was an error, Please try again',
      );
    }
  }
}
