import 'package:flutter/material.dart';

extension BrightnessExtensions on Brightness {
  Brightness get opposite => this == .light ? .dark : .light;
}
