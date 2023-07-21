// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Original theme can be found here:
// https://github.com/flutter/gallery/blob/master/lib/themes/gallery_theme_data.dart

// Let's not care about deprecated theme variables right now...
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

const _lightFillColor = Colors.black;
const _darkFillColor = Colors.white;

final Color _lightFocusColor = Colors.black.withOpacity(0.12);
final Color _darkFocusColor = Colors.white.withOpacity(0.12);

final ThemeData lightThemeData = _themeData(
  _lightColorScheme,
  _lightFocusColor,
);
final ThemeData darkThemeData = _themeData(
  _darkColorScheme,
  _darkFocusColor,
);

ThemeData _themeData(ColorScheme colorScheme, Color focusColor) {
  return ThemeData(
    colorScheme: colorScheme,
    textTheme: _textTheme,
    // Matches manifest.json colors and background color.
    primaryColor: const Color(0xFF030303),
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.background,
      elevation: 0,
      iconTheme: IconThemeData(color: colorScheme.primary),
    ),
    iconTheme: IconThemeData(color: colorScheme.onPrimary),
    canvasColor: colorScheme.background,
    scaffoldBackgroundColor: colorScheme.background,
    highlightColor: Colors.transparent,
    focusColor: focusColor,
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Color.alphaBlend(
        _lightFillColor.withOpacity(0.8),
        _darkFillColor,
      ),
      contentTextStyle: _textTheme.subtitle1!.apply(color: _darkFillColor),
    ),
  );
}

const ColorScheme _lightColorScheme = ColorScheme(
  primary: Color(0xFFB93C5D),
  primaryVariant: Color(0xFF117378),
  secondary: Color(0xFFEFF3F3),
  secondaryVariant: Color(0xFFFAFBFB),
  background: Color(0xFFE6EBEB),
  surface: Color(0xFFFAFBFB),
  onBackground: Colors.white,
  error: _lightFillColor,
  onError: _lightFillColor,
  onPrimary: _lightFillColor,
  onSecondary: Color(0xFF322942),
  onSurface: Color(0xFF241E30),
  brightness: Brightness.light,
);

const ColorScheme _darkColorScheme = ColorScheme(
  primary: Color(0xFFFF8383),
  primaryVariant: Color(0xFF1CDEC9),
  secondary: Color(0xFF4D1F7C),
  secondaryVariant: Color(0xFF451B6F),
  background: Color(0xFF241E30),
  surface: Color(0xFF1F1929),
  onBackground: Color(0x0DFFFFFF),
  // White with 0.05 opacity
  error: _darkFillColor,
  onError: _darkFillColor,
  onPrimary: _darkFillColor,
  onSecondary: _darkFillColor,
  onSurface: _darkFillColor,
  brightness: Brightness.dark,
);

const _regular = FontWeight.w400;
const _medium = FontWeight.w500;
const _semiBold = FontWeight.w600;
const _bold = FontWeight.w700;

const TextTheme _textTheme = TextTheme(
  headline4: TextStyle(fontWeight: _bold, fontSize: 20.0),
  caption: TextStyle(fontWeight: _semiBold, fontSize: 16.0),
  headline5: TextStyle(fontWeight: _medium, fontSize: 16.0),
  subtitle1: TextStyle(fontWeight: _medium, fontSize: 16.0),
  overline: TextStyle(fontWeight: _medium, fontSize: 12.0),
  bodyText1: TextStyle(fontWeight: _regular, fontSize: 14.0),
  subtitle2: TextStyle(fontWeight: _medium, fontSize: 14.0),
  bodyText2: TextStyle(fontWeight: _regular, fontSize: 16.0),
  headline6: TextStyle(fontWeight: _bold, fontSize: 16.0),
  button: TextStyle(fontWeight: _semiBold, fontSize: 14.0),
);
