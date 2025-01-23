import 'package:go_router/go_router.dart';

void customNavigationRoutr(context, path) {
  GoRouter.of(context).push("/$path");
}

void customNavigationRoutrNamed(context, path) {
  GoRouter.of(context).pushNamed("/$path");
}

void customNavigationRoutrReplasment(context, path) {
  GoRouter.of(context).pushReplacement('/$path');
}
