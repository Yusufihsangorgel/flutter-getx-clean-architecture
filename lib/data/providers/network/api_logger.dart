import 'package:get/get_connect/http/src/response/response.dart';
import 'package:getx_clean_architecture/app/util/logger.dart';
import 'package:getx_clean_architecture/data/providers/network/api_request_representable.dart';

class RequestLogger {
  static void logRequest(APIRequestRepresentable request) {
    CustomLogger.logger.d('Request: ${request.method.string} ${request.url}');
    CustomLogger.logger.d('Headers: ${request.headers}');
    CustomLogger.logger.d('Query: ${request.query}');
    CustomLogger.logger.d('Body: ${request.body}');
  }
}

class ResponseLogger {
  static void logResponse(Response<dynamic> response) {
    CustomLogger.logger.d('Response: ${response.statusCode}');
    CustomLogger.logger.d('Headers: ${response.headers}');
    CustomLogger.logger.d('Body: ${response.body}');
  }
}
