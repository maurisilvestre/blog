import 'package:microblogging/core/error/failure.dart';

import 'package:dartz/dartz.dart';

import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';
import '../models/models.dart';

class PostRepositoryImpl implements IPostRepository {
  IMicrobloggingRemoteDatasource remoteDatasource;
  IMicrobloggingLocalDatasource localDatasource;

  PostRepositoryImpl({
    required this.remoteDatasource,
    required this.localDatasource,
  });

  @override
  Future<Either<Failure, List<Post>>> deletePost(Post post) async {
    try {
      await localDatasource.deletePost(
        PostModel(
          id: post.id,
          user: UserPostModel(
            name: post.user.name,
            email: post.user.email,
            imageProfile: post.user.imageProfile,
          ),
          message: MessageModel(
            content: post.message.content,
            createdAt: post.message.createdAt,
          ),
        ),
      );

      var list = await localDatasource.getPosts();

      return Right(list.map((post) => post.toEntity()).toList());
    } on ServerFailure {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Post>>> getPosts() async {
    try {
      var result = await localDatasource.getPosts();

      return Right(result.map((post) => post.toEntity()).toList());
    } on ServerFailure {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Post>>> savePost(Post post) async {
    try {
      await localDatasource.savePost(
        PostModel(
          id: post.id,
          user: UserPostModel(
            email: post.user.email,
            name: post.user.name,
            imageProfile: post.user.imageProfile,
          ),
          message: MessageModel(
            content: post.message.content,
            createdAt: post.message.createdAt,
          ),
        ),
      );

      var list = await localDatasource.getPosts();

      return Right(list.map((post) => post.toEntity()).toList());
    } on ServerFailure {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<News>>> getNews() async {
    try {
      var result = await remoteDatasource.getNews();

      return Right(result.news.map((post) => post.toEntity()).toList());
    } on ServerFailure {
      return Left(ServerFailure());
    }
  }
}
