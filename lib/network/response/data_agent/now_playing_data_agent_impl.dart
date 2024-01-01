import 'package:dio/dio.dart';
import 'package:movie_app/data/vos/now_playing_vos/results_vo.dart';
import 'package:movie_app/network/response/api/now_playing_api.dart';
import 'package:movie_app/network/response/data_agent/now_playing_data_agent.dart';

class NowPlayingDataAgentImpl extends NowPlayingDataAgent {
  late NowPlayingAPI _nowPlayingAPI;
  NowPlayingDataAgentImpl._() {
    _nowPlayingAPI = NowPlayingAPI(Dio());
  }
  static final NowPlayingDataAgentImpl _singleton = NowPlayingDataAgentImpl._();

  factory NowPlayingDataAgentImpl() => _singleton;
  @override
  Future<List<NowPlayingResultVO>> getNowPlayingList() => _nowPlayingAPI
      .getAllResponse()
      .asStream()
      .map((event) => event.results)
      .first;
}
