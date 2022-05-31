import 'dart:convert';

import 'package:microblogging/core/services/auth/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/models.dart';

abstract class IMicrobloggingLocalDatasource {
  Future<List<PostModel>> getPosts();

  Future<bool> savePost(PostModel post);
  Future<bool> deletePost(PostModel post);
}

class MicrobloggingLocalDataSource implements IMicrobloggingLocalDatasource {
  final SharedPreferences sharedPreferences;
  final IAuthService authService;

  MicrobloggingLocalDataSource(
      {required this.sharedPreferences, required this.authService});

  @override
  Future<List<PostModel>> getPosts() async {
    var result = sharedPreferences.getStringList('POSTS');

    return Future.delayed(
        const Duration(milliseconds: 100),
        (() => result == null
            ? []
            : result.map((e) => PostModel.fromJson(json.decode(e))).toList()));
  }

  @override
  Future<bool> savePost(PostModel postModel) async {
    var result = sharedPreferences.getStringList('POSTS');
    var success = false;
    if (result == null) {
      success = await sharedPreferences
          .setStringList('POSTS', [json.encode(postModel.toJson())]);
    } else {
      var listPost =
          result.map((e) => PostModel.fromJson(json.decode(e))).toList();
      listPost.removeWhere(
        (element) => (element.id == postModel.id),
      );
      listPost.add(postModel);

      success = await sharedPreferences.setStringList(
          'POSTS', listPost.map((e) => json.encode(e.toJson())).toList());
    }
    return Future.value(success);
  }

  @override
  Future<bool> deletePost(PostModel post) async {
    var user = await authService.getUser();

    var result = sharedPreferences.getStringList('POSTS');
    var listPost =
        result!.map((e) => PostModel.fromJson(json.decode(e))).toList();
    var success = false;
    listPost.removeWhere(
      (element) =>
          (element.id == post.id) && (element.user.email == user.email),
    );

    success = await sharedPreferences.setStringList(
        'POSTS', listPost.map((e) => json.encode(e.toJson())).toList());
    return Future.value(success);
  }
}
