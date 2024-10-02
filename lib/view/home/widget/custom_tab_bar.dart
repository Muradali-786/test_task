import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:flutter/material.dart';

import '../../../configs/color/app_color.dart';
import '../../../configs/size_config.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  AnimatedButtonController buttonController = AnimatedButtonController();
  late PageController _pageController;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: SizeConfig.screenHeight * 0.08,
        child: AnimatedButtonBar(
          radius: 12,
          backgroundColor: kWhite,
          foregroundColor: Colors.black87,
          elevation: 0,
          borderColor: kGrey,
          innerVerticalPadding: 12,
          controller: buttonController,
          children: [
            ButtonBarEntry(
              onTap: () {},
              child: Text('Signp Approvals',
                  style: TextStyle(
                    fontSize: 14,
                    color: buttonController.index == 0 ? kWhite : kBlack,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            ButtonBarEntry(
              onTap: () {},
              child: Text(
                'Work Order Approvals',
                style: TextStyle(
                  fontSize: 14,
                  color: buttonController.index == 1 ? kWhite : kBlack,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
