import 'package:movie_app/data/vos/now_playing_vos/results_vo.dart';

abstract class NowPlayingDataAgent {
  Future<List<NowPlayingResultVO>> getNowPlayingList();
}
