import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/onbording/presentaion/widget/onbording_page.dart';
import 'package:tashkeela/core/database/cache/cache_helper.dart';
import 'package:tashkeela/core/routes/custome_routs.dart';
import 'package:tashkeela/core/services/serviese_locator.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_strings.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnBordingViewState createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  int currentPage = 0;
  final PageController _controller = PageController(initialPage: 0);

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(i == currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8,
      width: isActive ? 50.0 : 25.0,
      decoration: BoxDecoration(
        color: isActive ? Appcolor.primaryColor : Appcolor.textColorGray,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (int page) {
          setState(() {
            currentPage = page;
          });
        },
        children: [
          OnBordingPage(
            image: Assets.assetsAnimationOnbording1,
            title: AppStrings.onBordingTitle1,
            subtitle: AppStrings.onBordingSubTitle1,
          ),
          OnBordingPage(
            image: Assets.assetsAnimationOnbording2,
            title: AppStrings.onBordingTitle2,
            subtitle: AppStrings.onBordingSubTitle2,
          ),
          OnBordingPage(
            image: Assets.assetsAnimationOnbording3,
            title: AppStrings.onBordingTitle3,
            subtitle: AppStrings.onBordingSubTitle3,
          ),
        ],
      ),
      bottomSheet: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolor.buttonColor,
                  fixedSize: Size(200, 50)),
              onPressed: () {
                checkOnBordingPage(context);
              },
              child: Text(
                currentPage < 2 ? AppStrings.next : AppStrings.createAccount,
                style: TextStyle(
                    color: currentPage < 2
                        ? Appcolor.buttonTextColor
                        : Appcolor.secondaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  void checkOnBordingPage(BuildContext context) {
    if (currentPage < 2) {
      _controller.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOutCubicEmphasized);
    } else {
      getIt<CacheHelper>().saveData(key: "isFirestTime", value: true);
      customNavigationRoutrReplasment(context, 'SignupView');
    }
  }
}
