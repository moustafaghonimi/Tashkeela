import 'package:go_router/go_router.dart';
import 'package:tashkeela/Feathures/auth/presentaion/view/signin_view.dart';
import 'package:tashkeela/Feathures/auth/presentaion/view/signup_view.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/view/history_player_view.dart';
import 'package:tashkeela/Feathures/home/presentaion/view/animate_page.dart';
import 'package:tashkeela/Feathures/home/presentaion/view/home_page_view.dart';
import 'package:tashkeela/Feathures/news/presentaion/view/news_view.dart';
import 'package:tashkeela/Feathures/onbording/presentaion/view/onbording_view.dart';
import 'package:tashkeela/Feathures/profile/presentaion/view/profile_view.dart';
import 'package:tashkeela/Feathures/search/presentaion/view/search_view.dart';
import 'package:tashkeela/Feathures/splach/presentaion/view/splach_view.dart';
import 'package:tashkeela/core/widget/home_nav_bar.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const SplachView(),
    ),
    GoRoute(
      path: '/onbording',
      builder: (context, state) => OnBordingView(),
    ),
    GoRoute(
      path: '/SignupView',
      builder: (context, state) => SignupView(),
    ),
    GoRoute(
      path: '/SignInView',
      builder: (context, state) => SignInView(),
    ),
    GoRoute(
      path: '/AnimatedPage',
      builder: (context, state) => AnimatedPage(),
    ),
    GoRoute(
      path: '/HomePage',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/NewsView',
      builder: (context, state) => NewsView(),
    ),
    GoRoute(
      path: '/SearchView',
      builder: (context, state) => SearchView(),
    ),
    GoRoute(
      path: '/ProfileView',
      builder: (context, state) => ProfileView(),
    ),
    GoRoute(
      path: '/HistoryPlayerView',
      builder: (context, state) => HistoryPlayerView(),
    ),
    GoRoute(
      path: '/HomeNavBar',
      builder: (context, state) => HomeNavBar(),
    ),
  ],
);
