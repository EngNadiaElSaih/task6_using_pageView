import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/onbording/on_bording_item_widget.dart';
import 'package:flutter_application_1/utils/color.utility.dart';
import 'package:flutter_application_1/utils/images.utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// void main() {
//   runApp(OnBoardingPage());
// }

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Scaffold(
        backgroundColor: ColorUtility.scaffoldBackground,
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: const [
                  OnBoardingItemWidget(
                    image: ImageUtility.badges,
                    title: "Certification and Badges",
                    subTitle:
                        " Earn a certificate after completion of every course",
                  ),
                  OnBoardingItemWidget(
                    image: ImageUtility.progressTracking,
                    title: "Progress Tracking",
                    subTitle: " Check your Progress of every course",
                  ),
                  OnBoardingItemWidget(
                    image: ImageUtility.offLine,
                    title: "Off line Access",
                    subTitle: " Make your course available offline",
                  ),
                  OnBoardingItemWidget(
                    image: ImageUtility.courseCategory,
                    title: "Course Catalog",
                    subTitle: "View in which courses you are enrolled",
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    _pageController.jumpToPage(3);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xff3A3A3A),
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: ColorUtility.main,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (_pageController.page!.toInt() == 3) {
                      // Navigate to the next page or perform any action you want
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Text(
                    _pageController.page == 3 ? 'Register' : 'Next',
                    style: TextStyle(
                      color: _pageController.page == 3
                          ? ColorUtility.secondry
                          : Color(0xff3A3A3A),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// by first method_

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_application_1/onbording/on_bording_item_widget.dart';
// import 'package:flutter_application_1/utils/color.utility.dart';
// import 'package:flutter_application_1/utils/color.utility.dart';
// import 'package:flutter_application_1/utils/color.utility.dart';
// import 'package:flutter_application_1/utils/images.utility.dart';
// import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

// import '../utils/color.utility.dart';

// void main() {
//   runApp(onBordingPage());
// }

// class onBordingPage extends StatefulWidget {
//   const onBordingPage({super.key});

//   @override
//   State<onBordingPage> createState() => _onBordingPageState();
// }

// class _onBordingPageState extends State<onBordingPage> {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       home: OnBoardingSlider(
//         headerBackgroundColor: ColorUtility.scaffoldBackground,
//         pageBackgroundColor: ColorUtility.scaffoldBackground,
//         //centerBackground: true,
//         finishButtonText: 'Register',
//         finishButtonStyle: FinishButtonStyle(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//           backgroundColor: ColorUtility.secondry,
//         ),
//         skipTextButton: Text(
//           'Skip',
//           style: TextStyle(
//             color: Color(0xff3A3A3A),
//           ),
//         ),
//         trailing: Text('Login'),
//         background: List.generate(
//           4,
//           (index) => SizedBox(),
//         ),
//         totalPage: 4,
//         speed: 1.5,
//         controllerColor: ColorUtility.main,
//         indicatorAbove: true,
//         addController: true,
//         pageBodies: const [
//           onBordingItemWidget(
//             image: ImageUtility.badges,
//             title: "Certification and Badges",
//             subTitle: " Earn a certificate after completion of every course",
//           ),
//           onBordingItemWidget(
//             image: ImageUtility.progressTracking,
//             title: "Progress Tracking",
//             subTitle: " Check your Progress of every course",
//           ),
//           onBordingItemWidget(
//             image: ImageUtility.offLine,
//             title: "Off line Access",
//             subTitle: " Make your course available offline",
//           ),
//           onBordingItemWidget(
//             image: ImageUtility.courseCategory,
//             title: "Course Catalog",
//             subTitle: "View in which courses you are enrolled",
//           ),
//         ],
//       ),
//     );
//   }
// }
