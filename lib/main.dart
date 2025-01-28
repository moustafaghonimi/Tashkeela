import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tashkeela/app/tashkeela_app.dart';
import 'package:tashkeela/core/database/cache/cache_helper.dart';
import 'package:tashkeela/core/services/serviese_locator.dart';

import 'secret_keys.dart';

final supabase = Supabase.instance.client;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: SecretKeysAndData.supabaseUrl,
    anonKey: SecretKeysAndData.supabaseAnonKey,
  );
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const MyApp());
}
