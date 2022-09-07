import 'package:dio/dio.dart';
import 'package:football_leagues/product/enums/enums.dart';

class DioOptions {
  static Dio dioOptions = Dio(
    BaseOptions(
      baseUrl: ServiceUrl.url.name,
      headers: ServiceHeaders.headers.header,
    ),
  );
}
