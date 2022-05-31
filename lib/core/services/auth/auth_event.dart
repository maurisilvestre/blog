part of 'auth_notifier.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthentication() = _CheckAuthentication;
  const factory AuthEvent.signUp(SignUp signUp) = _SignUp;
  const factory AuthEvent.signIn(SignIn signIn) = _SignIn;
  const factory AuthEvent.signOut() = _SignOut;
}
