import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Color? backgroundColor;
  final Widget? title;
  final Widget? leading;
  final Widget? child;
  final bool? centerTitle;
  final String? subTitle;

  const CustomAppBar({
    super.key,
    this.height = kToolbarHeight,
    this.backgroundColor,
    required this.title,
    this.subTitle,
    this.leading,
    this.child,
    this.centerTitle,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: Theme.of(context).colorScheme.onPrimary,
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Theme.of(context).colorScheme.onPrimary,
              statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            elevation: 0,
            centerTitle: centerTitle ?? false,
            leading: leading ?? const SizedBox.shrink(),
            titleSpacing: 0,
            title: title,
          ),
          if (subTitle != null) SizedBox(height: 5.h),
          if (subTitle != null)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w),
              child: Row(
                children: [
                  Text(
                    subTitle!,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 14.h, color: Colors.black),
                  ),
                  SizedBox(width: 8.w),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
