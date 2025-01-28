import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tashkeela/core/database/cache/cache_helper.dart';
import 'package:tashkeela/core/routes/custome_routs.dart';
import 'package:tashkeela/core/services/serviese_locator.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    super.initState();
    bool isFirstTime =
        getIt<CacheHelper>().getData(key: 'isFirestTime') ?? false;

    if (isFirstTime == true) {
      Supabase.instance.client.auth.currentUser != null
          ? dalayNavigate(context, 'AnimatedPage')
          : dalayNavigate(context, 'SignInView');
    } else {
      dalayNavigate(context, 'onbording');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            Assets.assetsAnimationSplachImage,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.splachT2,
                style: AppTextThem.green48bold,
              ),
              Text(
                AppStrings.splachT1,
                style: AppTextThem.whait48bold,
              ),
            ],
          )
        ],
      ),
    );
  }
}

void dalayNavigate(context, String path) {
  Future.delayed(const Duration(milliseconds: 2500), () {
    customNavigationRoutrReplasment(context, path);
  });
}
