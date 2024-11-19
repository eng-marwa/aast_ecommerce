import 'package:aast_ecommerce/model/onboarding_data.dart';
import 'package:aast_ecommerce/ui/onboarding_page.dart';
import 'package:flutter/material.dart';

import '../resources/colors.dart';
import '../resources/images.dart';
import '../resources/theme.dart';
import 'home.dart';

class Onboarding extends StatefulWidget {
  Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final List<OnboardingData> _list = [
    OnboardingData(ImageManager.image1, 'Choose Products',
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'),
    OnboardingData(ImageManager.image2, 'Make Payment',
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'),
    OnboardingData(ImageManager.image3, 'Get Your Order',
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'),
  ];

  final PageController _pageController = PageController();
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                _pageIndex = value;
              });
            },
            controller: _pageController,
            itemCount: _list.length,
            itemBuilder: (context, index) => Column(
                  children: [
                    OnboardingPage(_list[index], index),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 22.0, left: 17, right: 17),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Visibility(
                                visible: _pageIndex != 0,
                                child: TextButton(
                                    onPressed: () {
                                      if (_pageIndex != 0) {
                                        _pageController.previousPage(
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.easeIn);
                                      }
                                    },
                                    child: Text(
                                      'Prev',
                                      style: TextStyles.prevButtonStyle,
                                    )),
                              ),
                              SizedBox(
                                width: 80,
                                child: Row(
                                  children: List.generate(
                                      _list.length,
                                      (index) => Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: _pageIndex == index
                                                      ? ColorManager.blackColor
                                                      : ColorManager.greyColor),
                                              width:
                                                  _pageIndex == index ? 15 : 5,
                                              height: 5,
                                            ),
                                          )),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    if (_pageIndex < 2) {
                                      _pageController.nextPage(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.easeIn);
                                    } else {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen(),
                                          ));
                                    }
                                  },
                                  child: Text(
                                    _pageIndex < 2 ? 'Next' : 'Get Started',
                                    style: TextStyles.nextButtonStyle,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ))
                  ],
                )),
      ),
    );
  }
}
