import 'package:dio/dio.dart';
import 'token_repocitory.dart';

class DioLoggingInterceptors extends InterceptorsWrapper {
  // ignore: unused_field
  final Dio _dio;
  final TokenRepository tokenRepository = TokenRepository();

  DioLoggingInterceptors(this._dio);

  @override
  Future onRequest(RequestOptions options) async {
    print(
        """--> ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${(options.baseUrl ?? "") + (options.path ?? "")}""");
    print("Headers:");
    options.headers.addAll({'Accept': 'application/json'});
    options.headers.addAll(
        {'content-type': 'application/json', 'Connection': 'keep-alive'});
    options.headers.forEach((k, v) => print('$k: $v'));
    if (options.queryParameters != null) {
      print("queryParameters:");
      options.queryParameters.forEach((k, v) => print('$k: $v'));
    }
    if (options.data != null) {
      print("Body: ${options.data}");
    }
    print(
      //
        """--> END ${options.method != null ? options.method.toUpperCase() : 'METHOD'}""");

    if (options.headers.containsKey('requiresToken')) {
      options.headers.remove('requiresToken');
      String accessToken = await tokenRepository.getToken();
      print('accessToken: $accessToken');
      options.headers.addAll({'Authorization': 'Bearer $accessToken'});
    }
    return options;
  }

  @override
  Future onResponse(Response response) {
    print(
      //
        """<-- ${response.statusCode} ${(response.request != null ? (response.request.baseUrl + response.request.path) : 'URL')}""");
    print("Headers:");
    response.headers?.forEach((k, v) => print('$k: $v'));
    print("Response: ${response.data}");
    print("<-- END HTTP");
    return super.onResponse(response);
  }

  @override
  Future onError(DioError dioError) async {
    print(
      //
        """<-- ${dioError.message} ${(dioError.response?.request != null ? (dioError.response.request.baseUrl + dioError.response.request.path) : 'URL')}""");
    print(
      //
        """${dioError.response != null ? dioError.response.data : 'Unknown Error'}""");
    print("<-- End error");

    super.onError(dioError);
  }
}
