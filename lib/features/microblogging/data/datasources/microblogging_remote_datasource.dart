import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/models.dart';

part 'microblogging_remote_datasource.g.dart';

abstract class IMicrobloggingRemoteDatasource {
  Future<NewsRequestModel> getNews();
}

@RestApi()
abstract class MicrobloggingRemoteDatasource
    implements IMicrobloggingRemoteDatasource {
  factory MicrobloggingRemoteDatasource(Dio dio, {String baseUrl}) =
      _MicrobloggingRemoteDatasource;

  @override
  @GET("/data.json")
  Future<NewsRequestModel> getNews();
}
