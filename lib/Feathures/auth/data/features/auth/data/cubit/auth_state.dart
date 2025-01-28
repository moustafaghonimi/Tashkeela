part of 'auth_cubit.dart';

sealed class AuthState {}

final class AuthStateInitial extends AuthState {}

// ====== sign up ===========
final class SignUpLoading extends AuthState {}

final class SignUpSuccess extends AuthState {}

final class SignUpError extends AuthState {
  final String message;
  SignUpError(this.message);
}

// ====== sign in ===========
final class SignInLoading extends AuthState {}

final class SignInSuccess extends AuthState {}

final class SignInError extends AuthState {
  final String message;
  SignInError(this.message);
}
