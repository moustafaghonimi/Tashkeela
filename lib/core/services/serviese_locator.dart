import 'package:get_it/get_it.dart';
import 'package:tashkeela/Feathures/auth/data/features/auth/data/cubit/auth_cubit.dart';
import 'package:tashkeela/core/database/cache/cache_helper.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
