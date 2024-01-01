import 'package:flutter/material.dart';
import 'package:movie_app/data/vos/model/now_playing_model.dart';
import 'package:movie_app/data/vos/now_playing_vos/results_vo.dart';

final NowPlayingModel nowPlayingModel = NowPlayingModel();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Now Playing"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<NowPlayingResultVO>>(
        future: nowPlayingModel.getAllNowPlayingList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          }
          final result = snapshot.data;
          return Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.9,
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      NowPlayingItemView(nowPlaying: result?[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 5,
                        child: Divider(
                          thickness: 3,
                        ),
                      ),
                  itemCount: result?.length ?? 0),
            ),
          );
        },
      ),
    );
  }
}

class NowPlayingItemView extends StatelessWidget {
  const NowPlayingItemView({super.key, required this.nowPlaying});

  final NowPlayingResultVO? nowPlaying;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(nowPlaying?.title ?? ''),
            Text(nowPlaying?.releaseDate ?? ''),
          ],
        ),
      ),
    );
  }
}
