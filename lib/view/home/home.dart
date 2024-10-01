import 'package:flutter/material.dart';
import 'package:test_task/configs/color/app_color.dart';
import 'package:test_task/configs/components/custom_app_bar.dart';
import 'package:test_task/configs/size_config.dart';
import 'package:animated_button_bar/animated_button_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Approvals',
        leading: BackIconButton(),
        showActionButton: true,
        actionWidget: ActionIconButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTabBar(
                button1Title: 'Signp Approvals',
                button2Title: 'Work Order Approvals',
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              const CustomTitleText(titleText: 'Pending Work Order'),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              ReUsable(),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              const CustomTitleText(titleText: 'Approved Work Order'),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              ReUsable(),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              ReUsable(),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              ReUsable(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTitleText extends StatelessWidget {
  final String titleText;
  const CustomTitleText({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: Theme.of(context).textTheme.labelLarge!.copyWith(
            fontSize: getPropScreenWidth(22),
          ),
    );
  }
}

class CustomTabBar extends StatefulWidget {
  final String button1Title, button2Title;
  final Color tabBarColor, topBorderColor;

  const CustomTabBar({
    super.key,
    required this.button1Title,
    required this.button2Title,
    this.tabBarColor = kBgColor,
    this.topBorderColor = kPrimary,
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  AnimatedButtonController buttonController = AnimatedButtonController();
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

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
        height: getPropScreenHeight(70),
        child: AnimatedButtonBar(
          radius: 12,
          backgroundColor: kWhite,
          foregroundColor: kPrimary,
          elevation: 3,
          borderColor: Colors.white,
          innerVerticalPadding: 12,
          controller: buttonController,
          children: [
            ButtonBarEntry(
              onTap: () {
                _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease);
              },
              child: Text(widget.button1Title,
                  style: TextStyle(
                    fontSize: 14,
                    color: buttonController.index == 0 ? kWhite : kBlack,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            ButtonBarEntry(
              onTap: () {
                _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease);
              },
              child: Text(
                widget.button2Title,
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


class ReUsable extends StatelessWidget {
  const ReUsable({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight * 0.1,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: kBlack),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: SizeConfig.screenHeight * 0.05,
                width: SizeConfig.screenWidth * 0.08,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    border: Border.all(color: kBlack),
                    borderRadius: BorderRadius.circular(4)),
                child: const Center(
                  child: Icon(Icons.group_sharp),
                ),
              ),
              SizedBox(width: SizeConfig.screenWidth * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Major Zaidi team',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const Text(
                    'work order',
                    style: TextStyle(fontSize: 12, color: kGrey85),
                  ),
                ],
              )
            ],
          ),
          Container(
              height: SizeConfig.screenHeight * 0.05,
              width: SizeConfig.screenWidth * 0.35,
              decoration: BoxDecoration(
                  border: Border.all(color: kBlack.withOpacity(0.7)),
                  borderRadius: BorderRadius.circular(8)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'View Work Order',
                    style: TextStyle(fontSize: 10, color: kGrey85),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 15,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
