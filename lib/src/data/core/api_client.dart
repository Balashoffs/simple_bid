// import 'dart:developer' as dev;
// import 'dart:io';
//
// import 'package:flutter/services.dart';
// import 'package:http/http.dart' as http;
//
// typedef AccessTokenSupplierClient = Future<Map<String, String>> Function(
//     Map<String, String>);
//
// // enum AResponseType {
// //   json,
// //   stream,
// //   plain,
// //   bytes;
// //
// //   const AResponseType();
// // }
// //
// // extension AResponseTypeToDio on AResponseType {
// //   ResponseType get convertToDio {
// //     switch (this) {
// //       case AResponseType.json:
// //         return ResponseType.json;
// //       case AResponseType.stream:
// //         return ResponseType.stream;
// //       case AResponseType.plain:
// //         return ResponseType.plain;
// //       case AResponseType.bytes:
// //         return ResponseType.bytes;
// //     }
// //   }
// // }
// //
// // class DioClient {
// //   late Dio dio;
// //
// //   DioClient() : dio = Dio();
// //
// //   DioClient.withProxy({
// //     required String baseUrl,
// //     Map<String, String>? proxy,
// //   }) : dio = Dio() {
// //     _configureProxy(proxy);
// //   }
// //
// //   DioClient.withCookie({
// //     required String baseUrl,
// //     required Directory appDocDir,
// //   }) : dio = Dio() {
// //     _configureCookie(appDocDir);
// //   }
// //
// //   DioClient.withProxyAndCookie({
// //     required String baseUrl,
// //     required Directory appDocDir,
// //     Map<String, String>? proxy,
// //   }) : dio = Dio() {
// //     _configureProxy(proxy);
// //     _configureCookie(appDocDir);
// //   }
// //
// //   Future<Response> get(
// //     Uri url, {
// //     Map<String, String>? headers,
// //     Map<String, dynamic>? queryParameters,
// //     ResponseType? responseType,
// //   }) =>
// //       dio.get(
// //         url.toString(),
// //         queryParameters: queryParameters,
// //         options: Options(
// //             headers: headers, responseType: responseType ?? ResponseType.bytes),
// //       );
// //
// //   Future<Response> post(
// //     Uri url, {
// //     String? body,
// //     Map<String, String>? headers,
// //     Map<String, dynamic>? queryParameters,
// //     ResponseType? responseType,
// //   }) =>
// //       dio.post(
// //         url.toString(),
// //         data: body,
// //         queryParameters: queryParameters,
// //         options: Options(
// //             headers: headers, responseType: responseType ?? ResponseType.bytes),
// //       );
// //
// //   Future<Response> put(
// //     Uri url, {
// //     dynamic body,
// //     Map<String, String>? headers,
// //     Map<String, dynamic>? queryParameters,
// //     ResponseType? responseType,
// //   }) =>
// //       dio.put(
// //         url.toString(),
// //         data: body,
// //         queryParameters: queryParameters,
// //         options: Options(
// //             headers: headers, responseType: responseType ?? ResponseType.bytes),
// //       );
// //
// //   Future<Response> patch(
// //     Uri url, {
// //     String? body,
// //     Map<String, String>? headers,
// //     Map<String, dynamic>? queryParameters,
// //     ResponseType? responseType,
// //   }) =>
// //       dio.patch(
// //         url.toString(),
// //         data: body,
// //         queryParameters: queryParameters,
// //         options: Options(
// //             headers: headers, responseType: responseType ?? ResponseType.bytes),
// //       );
// //
// //   Future<Response> delete(
// //     Uri url, {
// //     Map<String, String>? headers,
// //     Map<String, dynamic>? params,
// //     ResponseType? responseType,
// //   }) =>
// //       dio.delete(
// //         url.toString(),
// //         queryParameters: params,
// //         options: Options(
// //             headers: headers, responseType: responseType ?? ResponseType.bytes),
// //       );
// //
// //   Future<Response> download(
// //     Uri url,
// //     String localPath, {
// //     Map<String, String>? headers,
// //     Map<String, dynamic>? params,
// //     ResponseType? responseType,
// //   }) =>
// //       dio.download(
// //         url.toString(),
// //         localPath,
// //         queryParameters: params,
// //         options: Options(headers: headers),
// //       );
// //
// //   void _configureProxy(Map<String, String>? proxy) {
// //     if (proxy != null) {
// //       final proxyString = '${proxy['host']}:${proxy['port']}';
// //       dev.log('Using proxy $proxyString', name: runtimeType.toString());
// //
// //       (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
// //           (client) {
// //         /// Hook into the findProxy callback to set the client's proxy.
// //         client.findProxy = (url) => 'PROXY $proxyString';
// //
// //         /// This is a workaround to allow Proxyman to receive
// //         /// SSL payloads when your app is running on Android.
// //         client.badCertificateCallback =
// //             (X509Certificate cert, String host, int port) => Platform.isAndroid;
// //
// //         return client;
// //       };
// //     }
// //   }
// //
// //   void _configureCookie(Directory appDocDir) {
// //     final cookieJar = PersistCookieJar(
// //       storage: FileStorage('${appDocDir.path}/.cookies/'),
// //     );
// //     dio.interceptors.add(CookieManager(cookieJar));
// //   }
// // }
//
// class AHttpClient {
//   late http.Client client;
//
//   AHttpClient() : client = http.Client();
//
//   Future<http.Response> get(
//     Uri url, {
//     Map<String, String>? headers,
//     Map<String, dynamic>? queryParameters,
//     String? responseType,
//   }) async {
//     Uri uri;
//     uri = url;
//
//     var rHeaders = {...?headers};
//
//     var response = await client.get(uri, headers: rHeaders);
//     return response;
//   }
//
//   Future<http.Response> post(
//     Uri url, {
//     String? body,
//     Map<String, String>? headers,
//     Map<String, dynamic>? queryParameters,
//     String? responseType,
//   }) async {
//     Uri uri;
//     uri = Uri.https(url.host, url.path, queryParameters);
//
//     var rHeaders = {...?headers};
//
//     var response = await client.post(uri, headers: rHeaders);
//     return response;
//   }
//
//   Future<http.Response> put(
//     Uri url, {
//     dynamic body,
//     Map<String, String>? headers,
//     Map<String, dynamic>? queryParameters,
//     String? responseType,
//   }) async {
//     Uri uri;
//     uri = Uri.https(url.host, url.path, queryParameters);
//
//     var rHeaders = {...?headers};
//
//     var response = await client.put(uri, headers: rHeaders);
//     return response;
//   }
//
//   Future<http.Response> patch(
//     Uri url, {
//     String? body,
//     Map<String, String>? headers,
//     Map<String, dynamic>? queryParameters,
//     String? responseType,
//   }) async {
//     Uri uri;
//     uri = Uri.https(url.host, url.path, queryParameters);
//
//     var rHeaders = {...?headers};
//
//     var response = await client.patch(uri, headers: rHeaders);
//     return response;
//   }
//
//   Future<http.Response> delete(
//     Uri url, {
//     Map<String, String>? headers,
//     Map<String, dynamic>? params,
//     String? responseType,
//   }) async {
//     Uri uri;
//     uri = Uri.https(url.host, url.path);
//
//     var rHeaders = {...?headers};
//
//     var response = await client.delete(uri, headers: rHeaders);
//     return response;
//   }
// }
//
// class ApiRequest {
//   final String url;
//   final dynamic body;
//   final String method;
//   final Map<String, dynamic> queryParameters;
//
//   const ApiRequest({
//     required this.url,
//     required this.body,
//     required this.method,
//     required this.queryParameters,
//   });
//
//   factory ApiRequest.fromRequestOptions(RequestOptions requestOptions) =>
//       ApiRequest(
//         url: requestOptions.uri.path,
//         body: requestOptions.data ?? '',
//         method: requestOptions.method,
//         queryParameters: requestOptions.queryParameters,
//       );
//
//   factory ApiRequest.fromHttp(http.BaseRequest request) => ApiRequest(
//         url: request.url.toString(),
//         body: null,
//         method: request.method,
//         queryParameters: request.url.queryParameters,
//       );
//
//   @override
//   String toString() => '$method $url $queryParameters $body';
// }
//
// class ApiResponse {
//   final List<int> body;
//   final int statusCode;
//   final String statusMessage;
//   final ApiRequest? apiRequest;
//   final Stream<Uint8List>? stream;
//
//   const ApiResponse({
//     required this.body,
//     required this.statusCode,
//     required this.statusMessage,
//     this.apiRequest,
//     this.stream,
//   });
//
//   factory ApiResponse.fromDioResponse(Response dioResponse) => ApiResponse(
//         body: dioResponse.data is Uint8List
//             ? dioResponse.data ?? const []
//             : const [],
//         statusCode: dioResponse.statusCode ?? 0,
//         statusMessage: dioResponse.statusMessage ?? '',
//         apiRequest: ApiRequest.fromRequestOptions(dioResponse.requestOptions),
//         stream: dioResponse.data is ResponseBody
//             ? (dioResponse.data as ResponseBody).stream
//             : null,
//       );
//
//   factory ApiResponse.fromDioError(DioError error) {
//     return ApiResponse(
//       body: error.response?.data ?? const [],
//       statusCode: error.response?.statusCode ?? 0,
//       statusMessage: error.response?.statusMessage ?? '',
//       apiRequest: ApiRequest.fromRequestOptions(error.requestOptions),
//     );
//   }
//
//   factory ApiResponse.fromHttpResponse(http.Response response) => ApiResponse(
//         body: response.bodyBytes,
//         statusCode: response.statusCode ?? 0,
//         statusMessage: '',
//         apiRequest: response.request == null
//             ? null
//             : ApiRequest.fromHttp(response.request!),
//         stream: response is http.StreamedResponse
//             ? (response as http.StreamedResponse).stream.toUint8ListStream()
//             : null,
//       );
//
//   // factory ApiResponse.fromDioError(DioError error) => ApiResponse(
//   //   body: error.response?.data ?? const [],
//   //   statusCode: error.response?.statusCode ?? 0,
//   //   statusMessage: error.response?.statusMessage ?? '',
//   //   apiRequest: ApiRequest.fromRequestOptions(error.requestOptions),
//   // );
//
//   @override
//   String toString() => '$apiRequest $statusCode $statusMessage';
// }
//
// abstract class ApiClient {
//   const ApiClient();
//
//   Future<T> get<T>(
//     String path, {
//     Map<String, dynamic>? params,
//     String? contentType,
//     String? fullPath,
//     bool file = false,
//     AResponseType? responseType,
//   });
//
//   Future<T> post<T>(
//     String path, {
//     Object? body,
//     Map<String, dynamic>? params,
//     String? contentType,
//     AResponseType? responseType,
//   });
//
//   Future<T> put<T>(
//     String path, {
//     Object? body,
//     Map<String, dynamic>? params,
//     String? contentType,
//     String? fullPath,
//     bool file = false,
//     AResponseType? responseType,
//   });
//
//   Future<T> patch<T>(
//     String path, {
//     Object? body,
//     Map<String, dynamic>? params,
//     String? contentType,
//     AResponseType? responseType,
//   });
//
//   Future<T> delete<T>(
//     String path, {
//     String? contentType,
//     Map<String, dynamic>? params,
//     AResponseType? responseType,
//   });
//
//   Future<T> download<T>(
//     String path,
//     String localPath, {
//     String? contentType,
//     Map<String, dynamic>? params,
//     String? fullPath,
//     AResponseType? responseType,
//   });
// }
//
// class ApiClientDio with JsonConverter implements ApiClient {
//   final String baseUrl;
//   final DioClient _client;
//   final AccessTokenSupplierClient? _accessTokenSupplier;
//
//   ApiClientDio({
//     required this.baseUrl,
//     required DioClient client,
//     AccessTokenSupplierClient? tokenSupplier,
//   })  : _client = client,
//         _accessTokenSupplier = tokenSupplier;
//
//   @override
//   Future<T> get<T>(
//     String path, {
//     Map<String, dynamic>? params,
//     String? contentType,
//     String? fullPath,
//     bool file = false,
//     AResponseType? responseType,
//   }) =>
//       _handleRequest<T>(
//         () async => _client.get(
//           fullPath != null ? Uri.parse(fullPath) : _getUrl(path),
//           queryParameters: params,
//           headers: file
//               ? await _accessTokenSupplier?.call({})
//               : await _buildHeaders(_accessTokenSupplier, contentType),
//           responseType: responseType?.convertToDio,
//         ),
//       );
//
//   @override
//   Future<T> post<T>(
//     String path, {
//     Object? body,
//     Map<String, dynamic>? params,
//     String? contentType,
//     AResponseType? responseType,
//   }) =>
//       _handleRequest<T>(
//         () async => _client.post(
//           _getUrl(path),
//           queryParameters: params,
//           body: encodeToJsonString(body),
//           headers: await _buildHeaders(_accessTokenSupplier, contentType),
//           responseType: responseType?.convertToDio,
//         ),
//       );
//
//   @override
//   Future<T> put<T>(
//     String path, {
//     Object? body,
//     Map<String, dynamic>? params,
//     String? contentType,
//     String? fullPath,
//     bool file = false,
//     AResponseType? responseType,
//   }) =>
//       _handleRequest<T>(
//         () async => _client.put(
//           fullPath != null ? Uri.parse(fullPath) : _getUrl(path),
//           queryParameters: params,
//           body: file ? body : encodeToJsonString(body),
//           headers: file
//               ? await _accessTokenSupplier?.call({})
//               : await _buildHeaders(_accessTokenSupplier, contentType),
//           responseType: responseType?.convertToDio,
//         ),
//       );
//
//   @override
//   Future<T> patch<T>(
//     String path, {
//     Object? body,
//     Map<String, dynamic>? params,
//     String? contentType,
//     AResponseType? responseType,
//   }) =>
//       _handleRequest<T>(
//         () async => _client.patch(
//           _getUrl(path),
//           queryParameters: params,
//           body: encodeToJsonString(body),
//           headers: await _buildHeaders(_accessTokenSupplier, contentType),
//           responseType: responseType?.convertToDio,
//         ),
//       );
//
//   @override
//   Future<T> delete<T>(
//     String path, {
//     String? contentType,
//     Map<String, dynamic>? params,
//     AResponseType? responseType,
//   }) =>
//       _handleRequest<T>(
//         () async => _client.delete(
//           _getUrl(path),
//           params: params,
//           headers: await _buildHeaders(_accessTokenSupplier, contentType),
//           responseType: responseType?.convertToDio,
//         ),
//       );
//
//   @override
//   Future<T> download<T>(
//     String path,
//     String localPath, {
//     String? contentType,
//     Map<String, dynamic>? params,
//     String? fullPath,
//     AResponseType? responseType,
//   }) =>
//       _handleRequest<T>(
//         () async => _client.download(
//           fullPath == null ? _getUrl(path) : Uri.parse(fullPath),
//           localPath,
//           params: params,
//           headers: await _buildHeaders(_accessTokenSupplier, contentType),
//           responseType: responseType?.convertToDio,
//         ),
//       );
//
//   Future<T> _handleRequest<T>(Future<Response> Function() request) async {
//     try {
//       final response = await request();
//       return _readResponse(ApiResponse.fromDioResponse(response));
//     } on DioException catch (e) {
//       return _readResponse(ApiResponse.fromDioError(e));
//     } catch (_) {
//       rethrow;
//     }
//   }
//
//   T _readResponse<T>(ApiResponse response) {
//     final decodedResponseBody = decodeUTF8(response.body);
//
//     if (response.statusCode >= 200 && response.statusCode < 300) {
//       if (response.stream != null) {
//         return response.stream as T;
//       }
//       return decodeFromJsonString(decodedResponseBody) as T;
//     } else if (response.statusCode == 400 ||
//         response.statusCode == 404 ||
//         response.statusCode == 500) {
//       throw ServerException(
//           response.statusMessage, decodeFromJsonString(decodedResponseBody));
//     } else if (response.statusCode == 403 || response.statusCode == 401) {
//       throw UnauthorizedException(response.statusMessage);
//     } else {
//       throw NetworkException(
//           '${response.statusCode} ${response.statusMessage}');
//     }
//   }
//
//   Future<Map<String, String>> _buildHeaders(
//       [AccessTokenSupplierClient? accessTokenSupplier,
//       String? contentType]) async {
//     Map<String, String> headers = {
//       'Content-Type': contentType ?? 'application/json',
//       // 'Access-Control-Allow-Credentials': "true",
//     };
//     if (accessTokenSupplier != null) return accessTokenSupplier(headers);
//     return headers;
//   }
//
//   Uri _getUrl(String path) => Uri.parse('$baseUrl$path');
// }
//
// class ApiClientHttp with JsonConverter implements ApiClient {
//   final String baseUrl;
//   final AHttpClient _client;
//   final AccessTokenSupplierClient? _accessTokenSupplier;
//
//   ApiClientHttp(
//     this.baseUrl,
//     this._client,
//     this._accessTokenSupplier,
//   );
//
//   @override
//   Future<T> get<T>(
//     String path, {
//     Map<String, dynamic>? params,
//     String? contentType,
//     String? fullPath,
//     bool file = false,
//     AResponseType? responseType,
//   }) =>
//       _handleRequest<T>(
//         () async => _client.get(
//           fullPath != null ? Uri.parse(fullPath) : _getUrl(path),
//           queryParameters: fullPath != null
//               ? {...Uri.parse(fullPath).queryParameters, ...?params}
//               : params,
//           headers: file
//               ? await _accessTokenSupplier?.call({})
//               : await _buildHeaders(_accessTokenSupplier, contentType),
//           responseType: responseType?.name,
//         ),
//       );
//
//   @override
//   Future<T> post<T>(
//     String path, {
//     Object? body,
//     Map<String, dynamic>? params,
//     String? contentType,
//     AResponseType? responseType,
//   }) =>
//       _handleRequest<T>(
//         () async => _client.post(
//           _getUrl(path),
//           queryParameters: params,
//           body: encodeToJsonString(body),
//           headers: await _buildHeaders(_accessTokenSupplier, contentType),
//           responseType: responseType?.name,
//         ),
//       );
//
//   @override
//   Future<T> put<T>(
//     String path, {
//     Object? body,
//     Map<String, dynamic>? params,
//     String? contentType,
//     String? fullPath,
//     bool file = false,
//     AResponseType? responseType,
//   }) =>
//       _handleRequest<T>(
//         () async => _client.put(
//           fullPath != null ? Uri.parse(fullPath) : _getUrl(path),
//           queryParameters: params,
//           body: file ? body : encodeToJsonString(body),
//           headers: file
//               ? await _accessTokenSupplier?.call({})
//               : await _buildHeaders(_accessTokenSupplier, contentType),
//           responseType: responseType?.name,
//         ),
//       );
//
//   @override
//   Future<T> patch<T>(
//     String path, {
//     Object? body,
//     Map<String, dynamic>? params,
//     String? contentType,
//     AResponseType? responseType,
//   }) =>
//       _handleRequest<T>(
//         () async => _client.patch(
//           _getUrl(path),
//           queryParameters: params,
//           body: encodeToJsonString(body),
//           headers: await _buildHeaders(_accessTokenSupplier, contentType),
//           responseType: responseType?.name,
//         ),
//       );
//
//   @override
//   Future<T> delete<T>(
//     String path, {
//     String? contentType,
//     Map<String, dynamic>? params,
//     AResponseType? responseType,
//   }) =>
//       _handleRequest<T>(
//         () async => _client.delete(
//           _getUrl(path),
//           params: params,
//           headers: await _buildHeaders(_accessTokenSupplier, contentType),
//           responseType: responseType?.name,
//         ),
//       );
//
//   @override
//   Future<T> download<T>(
//     String path,
//     String localPath, {
//     String? contentType,
//     Map<String, dynamic>? params,
//     String? fullPath,
//     AResponseType? responseType,
//   }) {
//     throw UnimplementedError();
//   }
//
//   Future<T> _handleRequest<T>(Future<http.Response> Function() request) async {
//     try {
//       final response = await request();
//       return _readResponse(ApiResponse.fromHttpResponse(response));
//     } catch (_) {
//       rethrow;
//     }
//   }
//
//   T _readResponse<T>(ApiResponse response) {
//     if (response.statusCode >= 200 && response.statusCode < 300) {
//       if (response.stream != null) {
//         return response.stream as T;
//       }
//       if (T is String) {
//         final decodedResponseBody = decodeUTF8(response.body);
//         return decodeFromJsonString(decodedResponseBody) as T;
//       }
//       return response.body as T;
//     } else if (response.statusCode == 400 ||
//         response.statusCode == 404 ||
//         response.statusCode == 500) {
//       final decodedResponseBody = decodeUTF8(response.body);
//       throw ServerException(
//           response.statusMessage, decodeFromJsonString(decodedResponseBody));
//     } else if (response.statusCode == 403 || response.statusCode == 401) {
//       throw UnauthorizedException(response.statusMessage);
//     } else {
//       throw NetworkException(
//           '${response.statusCode} ${response.statusMessage}');
//     }
//   }
//
//   Future<Map<String, String>> _buildHeaders(
//       [AccessTokenSupplierClient? accessTokenSupplier,
//       String? contentType]) async {
//     Map<String, String> headers = {
//       'Content-Type': contentType ?? 'application/json',
//       // 'Access-Control-Allow-Credentials': "true",
//     };
//     if (accessTokenSupplier != null) return accessTokenSupplier(headers);
//     return headers;
//   }
//
//   Uri _getUrl(String path) => Uri.parse('$baseUrl$path');
// }
//
// extension ByteStreamX on http.ByteStream {
//   Stream<Uint8List> toUint8ListStream() =>
//       map((event) => Uint8List.fromList(event));
// }
