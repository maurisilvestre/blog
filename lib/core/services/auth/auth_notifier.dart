import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/auth/domain/entities/entities.dart';
import '../../../features/auth/domain/repositories/repositories.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_notifier.freezed.dart';

/// [AuthNotifier] allows you to listen to user authentication state.
class AuthNotifier extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;

  ///  Create new instance of [AuthNotifier]
  AuthNotifier(
    this._authRepository,
  ) : super(const AuthState()) {
    on<_CheckAuthentication>(_checkAuthentication);
    on<_SignUp>(_signUp);
    on<_SignIn>(_signIn);
    on<_SignOut>(_signOut);
  }

  /// Toggle the user auth state
  Future<void> _checkAuthentication(
      _CheckAuthentication event, Emitter<AuthState> emit) async {
    final isAuthenticated = await _authRepository.isLogged();

    if (isAuthenticated) {
      var result = await _authRepository.getUserCredentials();
      result.fold(
          (l) => emit(state.copyWith(status: AuthStatus.unauthenticated)),
          (r) =>
              emit(state.copyWith(status: AuthStatus.authenticated, user: r)));
    }
  }

  Future<void> _signUp(_SignUp event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.authenticated, error: ''));
    var result = await _authRepository.signUp(event.signUp);

    result.fold(
        (l) => emit(state.copyWith(
            status: AuthStatus.unauthenticated, error: 'Usuário já existe')),
        (r) => emit(state.copyWith(status: AuthStatus.authenticated, user: r)));
  }

  Future<void> _signIn(_SignIn event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.authenticated, error: ''));
    var result = await _authRepository.signIn(event.signIn);

    result.fold(
        (l) => emit(state.copyWith(
            status: AuthStatus.unauthenticated,
            error: 'Confirme os dados informados e tente novamente!')),
        (r) => emit(state.copyWith(status: AuthStatus.authenticated, user: r)));
  }

  Future<void> _signOut(_SignOut event, Emitter<AuthState> emit) async {
    var result = await _authRepository.signOut();

    result.fold(
        (l) => emit(state.copyWith(status: AuthStatus.unauthenticated)),
        (r) => emit(
            state.copyWith(status: AuthStatus.unauthenticated, user: null)));
  }

  User getUser() {
    return state.user!;
  }
}
