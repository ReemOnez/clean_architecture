import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin ThemeMixin<S extends StatefulWidget> on State<S> {
  String get fontFamily => _fontFamily!;

  AppBarTheme get appBarTheme => _appBarTheme!;

  String? _fontFamily;
  AppBarTheme? _appBarTheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _fontFamily = 'here we write the font family we choose';
    _appBarTheme = const AppBarTheme(
      scrolledUnderElevation: 0,
      foregroundColor: Color(0xFFFFFFFF),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFFFFFF),
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      iconTheme: IconThemeData(
        color: Color(0xFF000000),
      ),
      backgroundColor: Color(0xFFFFFFFF),
    );
  }
}
