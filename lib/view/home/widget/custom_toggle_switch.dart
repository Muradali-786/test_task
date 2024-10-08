import 'package:flutter/material.dart';
import 'package:test_task/configs/size_config.dart';

import '../../../configs/color/app_color.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      children: [
        Container(
          height: 54,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: kGrey),
          ),
          child: TabBar(
            controller: _tabController,
            indicator: BoxDecoration(
              color: kSecondry,
              borderRadius: BorderRadius.circular(10),
            ),
            labelColor: kWhite,
            unselectedLabelColor: kSecondry,
            labelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            tabs: const [
              Tab(text: 'Sign Up Approval'),
              Tab(text: 'Work Order Approval'),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          child: TabBarView(
            controller: _tabController,
            children: const [
              Center(child: Text('Sign Up Approval Content')),
              Center(child: Text('Work Order Approval Content')),
            ],
          ),
        )
      ],
    );
  }
}
