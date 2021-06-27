import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_copy_and_paste/Arquitectura/Conexion/api_baseUrl.dart';
import 'package:flutter_copy_and_paste/Arquitectura/Conexion/dio_login_interception.dart';
import 'package:flutter_copy_and_paste/Arquitectura/Persona/persona.dart';
import 'package:retrofit/retrofit.dart';

part 'personas_provider.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio) {
    dio.interceptors.add(DioLoggingInterceptors(dio));
    return _RestClient(dio, baseUrl: baseUrl);
  }

  @GET("/usuario/{id}")
  @Headers(<String, String>{"requiresToken": "true"})
  Future<List<String>> getThings(@Path() int id);

  @POST("/usuario/{id}")
  @Headers(<String, String>{"requiresToken": "true"})
  Future<String> addThings(@Path() int id,  @Body() Persona persona);

}
