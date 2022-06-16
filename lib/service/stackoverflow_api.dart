import 'package:dio/dio.dart';
import 'package:hca_coding_project_flutter/model/constants.dart';
import 'package:retrofit/retrofit.dart';

import '../model/latest_post.dart';
part 'stackoverflow_api.g.dart';

@RestApi(baseUrl: Constants.apiBaseURL)
abstract class StackOverflowApiClient{
  factory StackOverflowApiClient(Dio dio, {String baseUrl}) = _StackOverflowApiClient;

  @GET("/2.3/posts?order=desc&sort=activity&site=stackoverflow")
  Future<LatestPost> getLatestPost();
}