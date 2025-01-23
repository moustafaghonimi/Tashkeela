import 'package:flutter/material.dart';
import 'package:tashkeela/app/tashkeela_app.dart';
import 'package:tashkeela/core/database/cache/cache_helper.dart';
import 'package:tashkeela/core/services/serviese_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const MyApp());
}
