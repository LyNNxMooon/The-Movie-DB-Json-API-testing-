import 'package:dio/dio.dart';
import 'package:movie_app/network/response/api_constant/api_constant.dart';
import 'package:movie_app/network/response/now_playing_response/results_response.dart';
import 'package:retrofit/http.dart';
part 'now_playing_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class NowPlayingAPI {
  factory NowPlayingAPI(Dio dio) => _NowPlayingAPI(dio);
  @GET(kEndPointForNowPlaying)
  Future<ResultResponse> getAllResponse();
}
