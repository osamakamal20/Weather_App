import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/onboardingscreen/onboarding_items.dart';
import 'package:weather/screens/Home/homepage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  var controller = OnboardingItems();
  var pageController = PageController();

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: controller.onboarding.length,
              onPageChanged: (index) {
                setState(
                  () {
                    currentIndex = index;
                  },
                );
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: 400,
                      height: 440,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Image.asset(
                        controller.onboarding[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      controller.onboarding[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 35,
                        color: primaryColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Text(
                        controller.onboarding[index].description,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: textColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10),
                    SmoothPageIndicator(
                      controller: pageController,
                      count: controller.onboarding.length,
                      onDotClicked: (index) => pageController.animateToPage(
                        index,
                        duration: Duration(milliseconds: 900),
                        curve: Curves.easeIn,
                      ),
                      effect: WormEffect(
                        dotHeight: 12,
                        dotWidth: 12,
                        activeDotColor: secondaryColor,
                        dotColor: Colors.blue[100]!,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (currentIndex ==
                              controller.onboarding.length - 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          } else {
                            pageController.nextPage(
                              duration: Duration(milliseconds: 900),
                              curve: Curves.easeIn,
                            );
                          }
                        },
                        child: Text(
                          currentIndex == controller.onboarding.length - 1
                              ? "Finish"
                              : "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
