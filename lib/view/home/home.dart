import 'package:flutter/material.dart';
import 'package:test_task/configs/color/app_color.dart';
import 'package:test_task/configs/components/custom_app_bar.dart';
import 'package:test_task/configs/size_config.dart';

import 'widget/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _controller = ScrollController();
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomToggleSwitch(),
                SizedBox(height: SizeConfig.screenHeight * 0.012),
                const CustomTitleText(titleText: 'Pending Work Orders'),
                SizedBox(height: SizeConfig.screenHeight * 0.012),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 6),
                  decoration: BoxDecoration(
                      border: Border.all(color: kGrey),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MajorZaidiWidget(),
                            CloseWorkOrder(),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.01),
                      const ApprovalActionWidget(),
                      SizedBox(height: SizeConfig.screenHeight * 0.012),
                      const InventorySummaryWidget(),
                      const TableHeaderRow(),
                      CustomDataTable(controller: _controller),

                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.012),
                const CustomList(),
                SizedBox(height: SizeConfig.screenHeight * 0.012),
                const CustomTitleText(titleText: 'Approved Work Order'),
                const CustomList(itemCount: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
