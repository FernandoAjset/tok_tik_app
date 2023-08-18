import 'package:flutter/material.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';
import 'package:tok_tik_app/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider(this.videosRepository);

  Future<void> loadNextPage() async {
    videos = await videosRepository.getTrendingVideosByPage(1);
    initialLoading = false;
    notifyListeners();
  }
}
