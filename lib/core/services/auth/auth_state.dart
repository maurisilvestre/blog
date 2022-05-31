part of 'auth_notifier.dart';

enum AuthStatus {
  initial,
  authenticated,
  unauthenticated;

  bool get isInitial => this == AuthStatus.initial;
  bool get isAuthenticated => this == AuthStatus.authenticated;
  bool get isUnauthenticated => this == AuthStatus.unauthenticated;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    User? user,
    @Default("") String error,
  }) = _AuthState;
}
