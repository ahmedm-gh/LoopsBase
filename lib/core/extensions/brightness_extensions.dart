import 'package:flutter/material.dart';

extension BrightnessExtensions on Brightness {
  Brightness get opposite => this == .light ? .dark : .light;

  bool get isDark => this == .dark;
  bool get isLight => this == .light;
}
