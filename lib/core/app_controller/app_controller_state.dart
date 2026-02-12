import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tuts/shared/methods/to_value.dart';

class AppControllerState extends Equatable {
  const AppControllerState({
    required this.locale,
    required this.brightness,
    required this.fontScale,
  });

  factory AppControllerState.initial() {
    return const AppControllerState(
      locale: Locale('en'),
      brightness: Brightness.dark,
      fontScale: 1.0,
    );
  }

  factory AppControllerState.fromJson(Map<String, dynamic> json) {
    return AppControllerState(
      locale: Locale(toValue(json["languageCode"], "en")),
      brightness: Brightness.values[toValue(json["brightness"], 0)],
      fontScale: toValue(json["fontScale"], 1.0),
    );
  }

  final Locale locale;
  final Brightness brightness;
  final double fontScale;

  AppControllerState copyWith({
    Locale? locale,
    Brightness? brightness,
    double? fontScale,
  }) {
    return AppControllerState(
      locale: locale ?? this.locale,
      brightness: brightness ?? this.brightness,
      fontScale: fontScale ?? this.fontScale,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "languageCode": locale.languageCode,
      "brightness": brightness.index,
      "fontScale": fontScale,
    };
  }

  @override
  List<Object?> get props => [locale, brightness, fontScale];
}
