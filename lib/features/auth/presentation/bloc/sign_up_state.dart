part of 'sign_up_bloc.dart';

enum SignUpStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == SignUpStatus.initial;
  bool get isLoading => this == SignUpStatus.loading;
  bool get isSuccess => this == SignUpStatus.success;
  bool get isFailure => this == SignUpStatus.failure;
}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(SignUpStatus.initial) SignUpStatus status,
    @Default(1) int selectedIndex,
  }) = _SignUpState;
}
