import 'package:tok_tik_app/domain/datasources/video_posts_datasource.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';

import '../../domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImp implements VideoPostRepository {
  final VideoPostDataSource videosDataSource;

  VideoPostRepositoryImp({required this.videosDataSource});

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
