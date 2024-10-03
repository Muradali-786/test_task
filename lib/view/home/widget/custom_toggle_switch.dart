
import 'package:flutter/material.dart';
import 'package:test_task/configs/size_config.dart';

import '../../../configs/color/app_color.dart';



class CustomToggleSwitch extends StatefulWidget {
  const CustomToggleSwitch({super.key});

  @override
  _CustomToggleSwitchState createState() => _CustomToggleSwitchState();
}

class _CustomToggleSwitchState extends State<CustomToggleSwitch> {
  bool isSignUpApprovalSelected = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight * 0.065,
      width: double.infinity,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: kWhite, // Background color
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: kGrey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSignUpApprovalSelected = true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isSignUpApprovalSelected ?kSecondry : kWhite,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Sign Up Approval',
                  style: TextStyle(
                    fontSize: 12,
                    color: isSignUpApprovalSelected ? kWhite : kSecondry,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSignUpApprovalSelected = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: !isSignUpApprovalSelected ? kSecondry: kWhite,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Work Order Approval',
                  style: TextStyle(
                    fontSize: 12,
                    color: !isSignUpApprovalSelected ? kWhite : kSecondry,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
