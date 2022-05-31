import 'dart:convert';

import 'package:microblogging/core/error/failure.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/models.dart';

abstract class IAuthLocalDataSource {
  Future<bool> isLogged();

  Future<UserModel?> getLastAuth();

  Future<UserModel> signIn(SignInModel login);

  Future<void> cacheAuth(UserModel userToCache);

  Future<UserModel> signUp(UserModel signUp);

  Future<void> signOut();
}

class AuthLocalDataSource implements IAuthLocalDataSource {
  final SharedPreferences sharedPreferences;
  AuthLocalDataSource({required this.sharedPreferences});

  @override
  Future<bool> isLogged() {
    final result = sharedPreferences.getString('USER') != null;
    return Future.value(result);
  }

  @override
  Future<void> cacheAuth(UserModel userToCache) async {
    await sharedPreferences.setString('USER', jsonEncode(userToCache.toJson()));
  }

  @override
  Future<UserModel?> getLastAuth() {
    final result = sharedPreferences.getString('USER');
    return Future.value(
        result == null ? null : UserModel.fromJson(json.decode(result)));
  }

  @override
  Future<UserModel> signIn(SignInModel signIn) async {
    var result = sharedPreferences.getString(signIn.email);

    return Future.value(
        result == null ? null : UserModel.fromJson(json.decode(result)));
  }

  @override
  Future<void> signOut() {
    return sharedPreferences.remove('USER');
  }

  @override
  Future<UserModel> signUp(UserModel signUp) async {
    var result = sharedPreferences.getString(signUp.email);
    if (result != null) {
      throw CacheFailure();
    }
    await sharedPreferences.setString(
        signUp.email, jsonEncode(signUp.toJson()));
    return Future.delayed(const Duration(milliseconds: 100), () => signUp);
  }
}
