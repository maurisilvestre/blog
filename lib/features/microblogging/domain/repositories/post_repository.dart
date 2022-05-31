import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/entities.dart';

abstract class IPostRepository {
  Future<Either<Failure, List<Post>>> savePost(Post post);
  Future<Either<Failure, List<Post>>> getPosts();
  Future<Either<Failure, List<Post>>> deletePost(Post post);
  Future<Either<Failure, List<News>>> getNews();
}
