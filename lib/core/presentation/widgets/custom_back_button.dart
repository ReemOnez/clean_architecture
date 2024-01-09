import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomBackButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: Colors.transparent,
      onPressed: () => onPressed(),
      icon: Icon(
        defaultTargetPlatform == TargetPlatform.android ? Icons.arrow_back : Icons.arrow_back_ios,
        size: defaultTargetPlatform == TargetPlatform.android ?  28 : 24,
      ),
      color: Theme.of(context).colorScheme.primary,
    );
  }
}