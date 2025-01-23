import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/home/presentaion/view/home_page_view.dart';
import 'package:tashkeela/core/routes/custome_routs.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/widget/home_nav_bar.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds and navigate to the second page
    dalyedNavigator(context, HomePage());
  }

  void dalyedNavigator(context, Widget pageRoute) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context, BookPageRoute(child: HomeNavBar()));
      customNavigationRoutrReplasment(context, 'HomeNavBar');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'book-hero',
          child: Container(
            color: Colors.transparent,
            child: Center(
                child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  textAlign: TextAlign.center,
                  AppStrings.animatePagetxt,
                  textStyle: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 70),
                ),
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            )),
          ),
        ),
      ),
    );
  }
}

class BookPageRoute extends PageRouteBuilder {
  final Widget child;

  BookPageRoute({required this.child})
      : super(
          transitionDuration: Duration(milliseconds: 800),
          pageBuilder: (context, animation, secondaryAnimation) => child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final begin = 0.0;
            final end = 1.0;
            final curve = Curves.easeInOut;

            final tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            final opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  // Create a book-opening effect
                  final angle =
                      (1 - animation.value) * 1.5; // Rotate from 90 degrees
                  return Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001) // Perspective effect
                      ..rotateY(angle),
                    alignment: Alignment.center,
                    child: child,
                  );
                },
                child: child,
              ),
            );
          },
        );
}
