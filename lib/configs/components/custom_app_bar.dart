import 'package:flutter/material.dart';
import '../color/app_color.dart';
import 'package:badges/badges.dart' as badges;

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color appBarColor, appBarTitleColor;
  final Widget? leading;
  final Widget? titleWidget;
  final Widget? actionWidget;
  final bool showActionButton;
  final VoidCallback? onMenuActionTap;

  const CustomAppBar({
    super.key,
    this.title = '',
    this.leading,
    this.appBarColor = kWhite,
    this.appBarTitleColor = kBlack,
    this.titleWidget,
    this.actionWidget,
    this.showActionButton = false,
    this.onMenuActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: appBarColor,
            border: const Border(bottom: BorderSide(color: kGrey))),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 30 / 2.5),
          child: Stack(
            children: [
              Positioned.fill(
                child: titleWidget != null
                    ? Center(
                        child: titleWidget!,
                      )
                    : Center(
                        child: Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 18),
                        ),
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leading ??
                      Transform.translate(
                        offset: const Offset(-14, 0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                          ),
                        ),
                      ),
                  if (showActionButton) ...[
                    Transform.translate(
                      offset: const Offset(12, 0),
                      child: actionWidget,
                    ),
                  ]
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}

class BackIconButton extends StatelessWidget {
  const BackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          border: Border.all(color: kGrey),
          borderRadius: BorderRadius.circular(6)),
      child: const Center(
        child: Icon(Icons.arrow_back, size: 20),
      ),
    );
  }
}

class ActionIconButton extends StatelessWidget {
  const ActionIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -12, end: -5),
      badgeContent: const Text(
        '3',
        style: TextStyle(fontSize: 8, color: kWhite),
      ),
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.square,
        badgeColor: Colors.orange,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Container(
        height: 25,
        width: 25,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            border: Border.all(color: kGrey),
            borderRadius: BorderRadius.circular(6)),
        child: const Center(
          child: Icon(Icons.notifications, size: 20),
        ),
      ),
    );
  }
}
