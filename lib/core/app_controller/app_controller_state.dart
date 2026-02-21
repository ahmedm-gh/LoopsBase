import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:loopsbase/shared/methods/to_value.dart';

class AppControllerState extends Equatable {
  const AppControllerState({
    required this.locale,
    required this.brightness,
    required this.fontScale,
    required this.seedColor,
  });

  factory AppControllerState.initial() {
    return const AppControllerState(
      locale: Locale('en'),
      brightness: Brightness.dark,
      fontScale: 1.0,
      seedColor: Colors.blue,
    );
  }

  factory AppControllerState.fromJson(Map<String, dynamic> json) {
    return AppControllerState(
      locale: Locale(toValue(json["languageCode"], "en")),
      brightness: Brightness.values[toValue(json["brightness"], 0)],
      fontScale: toValue(json["fontScale"], 1.0),
      seedColor: Color(toValue(json["seedColor"], Colors.blue.toARGB32())),
    );
  }

  final Locale locale;
  final Brightness brightness;
  final double fontScale;
  final Color seedColor;

  AppControllerState copyWith({
    Locale? locale,
    Brightness? brightness,
    double? fontScale,
    Color? seedColor,
  }) {
    return AppControllerState(
      locale: locale ?? this.locale,
      brightness: brightness ?? this.brightness,
      fontScale: fontScale ?? this.fontScale,
      seedColor: seedColor ?? this.seedColor,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "languageCode": locale.languageCode,
      "brightness": brightness.index,
      "fontScale": fontScale,
      "seedColor": seedColor.toARGB32(),
    };
  }

  @override
  List<Object?> get props => [locale, brightness, fontScale, seedColor];
}
