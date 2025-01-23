import 'package:get_it/get_it.dart';
import 'package:tashkeela/core/database/cache/cache_helper.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
