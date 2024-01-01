import 'package:movie_app/data/vos/now_playing_vos/results_vo.dart';
import 'package:movie_app/network/response/data_agent/now_playing_data_agent.dart';
import 'package:movie_app/network/response/data_agent/now_playing_data_agent_impl.dart';

class NowPlayingModel {
  NowPlayingModel._();
  static final NowPlayingModel _singleton = NowPlayingModel._();
  factory NowPlayingModel() => _singleton;

  final NowPlayingDataAgent _nowPlayingDataAgent = NowPlayingDataAgentImpl();
  Future<List<NowPlayingResultVO>> getAllNowPlayingList() =>
      _nowPlayingDataAgent.getNowPlayingList();
}
