import 'package:aast_ecommerce/model/onboarding_data.dart';
import 'package:aast_ecommerce/resources/colors.dart';
import 'package:aast_ecommerce/resources/images.dart';
import 'package:aast_ecommerce/resources/theme.dart';
import 'package:aast_ecommerce/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingData _data;
  final int _pageIndex;

  OnboardingPage(this._data, this._pageIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${_pageIndex + 1}/3',
                style: TextStyles.defaultStyle,
              ),
              TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      )),
                  child: Text(
                    'Skip',
                    style: TextStyles.defaultStyle,
                  ))
            ],
          ),
          const SizedBox(
            height: 110,
          ),
          SvgPicture.asset(_data.image),
          const SizedBox(
            height: 15,
          ),
          Text(
            _data.title,
            style: TextStyles.titleStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            _data.description,
            style: TextStyles.descriptionStyle,
          ),
        ],
      ),
    );
  }
}
