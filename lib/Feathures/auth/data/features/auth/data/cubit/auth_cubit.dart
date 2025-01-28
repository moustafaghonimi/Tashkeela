import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/widget/custom_tost.dart';

import 'package:tashkeela/main.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthStateInitial());

  String? emailAddress;
  String? password;
  String? name;
  String? phone;
  String? rePass;
  bool isPassword = true;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  // ====== sign up ===========
  Future<void> signUpAutheWithEmailAndPassword(context) async {
    try {
      emit(SignUpLoading());
      final response = await supabase.auth.signUp(
        password: password!,
        email: emailAddress,
      );

      if (response.user != null) {
        await storeUserData(response.user!.id, emailAddress!, name!, phone!);
        emit(SignUpSuccess());

        if (response.user!.newEmail != response.user!.email) {
          customToast(
            context,
            AppStrings.emailAlreadyRegistered,
          );
        } else {
          emit(SignUpSuccess());
        }
      } else {
        emit(SignUpError('Error: cant sign up 😒😒😒'));
      }
    } on AuthException catch (error) {
      if (error.message.contains('already registered')) {
        customToast(
          context,
          AppStrings.emailAlreadyRegistered,
        );
      } else {
        emit(SignUpError(error.message));
      }
    } catch (e) {
      emit(SignUpError(e.toString()));
    }
  }

  // ====== sign in ===========
  Future<void> signInAutheWithEmailAndPassword(context) async {
    try {
      emit(SignInLoading());
      final response = await supabase.auth
          .signInWithPassword(password: password!, email: emailAddress);
      emit(SignInSuccess());

      if (response.user != null) {
        if (response.user?.emailConfirmedAt == null) {
          customToast(
            context,
            AppStrings.signInconfirm,
          );
        } else {
          emit(SignInSuccess());
        }
      } else {
        emit(SignInError('Error: cant sign in 😒😒😒'));
      }
    } catch (e) {
      emit(SignInError(e.toString()));
    }
  }

//======== store user data ===========

  /// Function to store user data into the 'users' table
  Future<void> storeUserData(
      String id, String email, String name, String phone) async {
    try {
      final response = await supabase.from('users').insert({
        'id': id, // The user's unique ID (usually from Supabase Auth)
        'email': email, // User's email
        'name': name, // User's name
        'phone': phone,
      });

      if (response.error == null) {
        print('User data stored successfully!');
      } else {
        print('Error storing user data: ${response.error!.message}');
      }
    } catch (e) {
      print('Exception while storing user data: $e');
    }
  }
}
