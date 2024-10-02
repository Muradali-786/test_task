import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../exception/app_exception.dart';
import 'network.dart';


class NetworkApiServices implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponse;

    try {
      final response =
      await http.get(Uri.parse(url)).timeout(const Duration(seconds: 5));
      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw InternetException('No Internet connection');
    } on TimeoutException {
      throw RequestTimeOut('Request timed out');
    } on HandshakeException {
      throw InternetException('SSL handshake failed');
    } on FormatException {
      throw BadRequestException('Invalid response format');
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String url, var data) async {
    dynamic jsonResponse;

    try {
      final response = await http
          .post(
        Uri.parse(url),
        body: data,
      )
          .timeout(const Duration(seconds: 30));
      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw InternetException('No Internet connection');
    } on TimeoutException {
      throw RequestTimeOut('Request timed out');
    } on HandshakeException {
      throw InternetException('SSL handshake failed');
    } on FormatException {
      throw BadRequestException('Invalid response format');
    }

    return jsonResponse;
  }

  @override
  Future postApiWithHeader(String url, data) async {
    dynamic jsonResponse;

    try {
      final response = await http
          .post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(data),
      )
          .timeout(const Duration(seconds: 30));
      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw InternetException('No Internet connection');
    } on TimeoutException {
      throw RequestTimeOut('Request timed out');
    } on HandshakeException {
      throw InternetException('SSL handshake failed');
    } on FormatException {
      throw BadRequestException('Invalid response format');
    }

    return jsonResponse;
  }

  // Method to return the appropriate response based on the status code
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200: // OK - Success
        return jsonDecode(response.body);

      case 201: // Created
        return jsonDecode(response.body);

      case 204: // No Content - Success, but no content returned
        return 'No content';

      case 400: // Bad Request
        throw BadRequestException('Bad Request: ${response.body}');

      case 401: // Unauthorized
        throw UnAuthorizeRequest('Unauthorized request: ${response.body}');

      case 403: // Forbidden
        throw UnAuthorizeRequest('Access forbidden: ${response.body}');

      case 404: // Not Found
        throw NotFoundException('Resource not found: ${response.body}');

      case 409: // Conflict
        throw ConflictException('Conflict: ${response.body}');
      case 422: // Unprocessable Entity
        throw BadRequestException('Unprocessable entity: ${response.body}');

      case 429: // Too Many Requests
        throw RateLimitException('Too many requests: ${response.body}');

      case 500: // Internal Server Error
        throw InternalServerError('Internal server error: ${response.body}');

      case 503: // Service Unavailable
        throw ServiceUnavailable('Service unavailable: ${response.body}');

      default: // Other unknown errors
        throw FetchDataException(
            'Error occurred with status code ${response.statusCode}: ${response.body}');
    }
  }
}