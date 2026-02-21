import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScrollableRow extends StatelessWidget {
  const ScrollableRow({
    required this.children,
    this.spacing = 0.0,
    this.padding,
    this.physics,
    this.controller,
    this.mainAxisAlignment = .start,
    this.textDirection,
    this.verticalDirection = .down,
    this.textBaseline,
    this.clipBehavior = .none,
    this.dragStartBehavior = .start,
    this.keyboardDismissBehavior = .manual,
    this.restorationId,
    this.primary,
    this.reverse = false,
    super.key,
  });

  final List<Widget> children;
  final double spacing;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;
  final ScrollController? controller;
  final MainAxisAlignment mainAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;
  final Clip clipBehavior;
  final DragStartBehavior dragStartBehavior;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  final String? restorationId;
  final bool? primary;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: clipBehavior,
      scrollDirection: Axis.horizontal,
      padding: padding,
      physics: physics,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      keyboardDismissBehavior: keyboardDismissBehavior,
      restorationId: restorationId,
      primary: primary,
      reverse: reverse,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        spacing: spacing,
        children: children,
      ),
    );
  }
}
