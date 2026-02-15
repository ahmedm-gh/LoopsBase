import "dart:math" as math;
import "package:flutter/material.dart";
import "package:loopsbase/shared/widgets/icons.dart";

import "../../../../core/extensions/extensions.dart";

class FeaturedTopicCard extends StatelessWidget {
  const FeaturedTopicCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.gradientColors,
    required this.onTap,
    super.key,
  });

  final String title;
  final String subtitle;
  final Widget icon;
  final List<Color> gradientColors;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    const BorderRadius borderRadius = .all(.circular(16));

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: LinearGradient(
          begin: .topLeft,
          end: .bottomRight,
          colors: gradientColors,
        ),
      ),
      child: Material(
        borderRadius: borderRadius,
        clipBehavior: .antiAlias,
        type: .transparency,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onTap,
          child: CustomPaint(
            painter: const CirclesPainter(color: Colors.white),
            child: Padding(
              padding: const .all(24),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    crossAxisAlignment: .start,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: textTheme.headlineSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: .bold,
                            height: 1.2,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CompactTopicCard extends StatelessWidget {
  const CompactTopicCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.accentColor,
    required this.onTap,
    super.key,
  });

  final String title;
  final String subtitle;
  final Icon icon;
  final Color accentColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final isDisabled = onTap == null;
    final isDark = context.isDark;

    const BorderRadius borderRadius = .all(.circular(16));

    final random = math.Random(title.hashCode);

    // 2 or 3 circles
    final int circleCount = 2 + random.nextInt(2);

    final circleColor = isDisabled
        ? colors.outlineVariant.withValues(alpha: 0.5)
        : Colors.white;

    final circles = <CustomCircle>[
      // Circle 1: Top Right area
      CustomCircle(
        offset: FractionalOffset(
          0.6 + random.nextDouble() * 0.4,
          random.nextDouble() * 0.4,
        ),
        color: circleColor.withValues(
          alpha: 0.01 + random.nextDouble() * 0.025,
        ),
        radius: 40 + random.nextDouble() * 50,
      ),
      // Circle 2: Bottom Left area
      CustomCircle(
        offset: FractionalOffset(
          random.nextDouble() * 0.4,
          0.6 + random.nextDouble() * 0.4,
        ),
        color: circleColor.withValues(
          alpha: 0.01 + random.nextDouble() * 0.025,
        ),
        radius: 40 + random.nextDouble() * 50,
      ),
    ];

    if (circleCount == 3) {
      // Circle 3: Bottom Right area (smaller, more subtle)
      circles.add(
        CustomCircle(
          offset: FractionalOffset(
            0.7 + random.nextDouble() * 0.3,
            0.7 + random.nextDouble() * 0.3,
          ),
          color: accentColor.withValues(
            alpha: 0.02 + random.nextDouble() * 0.03,
          ),
          radius: 20 + random.nextDouble() * 30,
        ),
      );
    }

    final child = DecoratedBox(
      decoration: BoxDecoration(
        // color: colors.surfaceContainerLow,
        gradient: LinearGradient(
          colors: [accentColor.withAlpha(75), accentColor.withAlpha(100)],
          // colors: [accentColor.withAlpha(15), accentColor.withAlpha(25)],
          begin: .topLeft,
          end: .bottomRight,
        ),
        borderRadius: borderRadius,
        // border: Border.all(
        //   color: isDisabled
        //       ? colors.outlineVariant.withValues(alpha: 0.3)
        //       : colors.outlineVariant.withValues(alpha: 0.5),
        // ),
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: CustomPaint(
          painter: CirclesPainter.custom(circles: circles),
          child: Material(
            borderRadius: borderRadius,
            type: MaterialType.transparency,
            child: InkWell(
              borderRadius: borderRadius,
              onTap: onTap,
              child: Padding(
                padding: const .all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Icon bubble
                    IconTheme.merge(
                      data: IconThemeData(
                        color: isDark ? accentColor : null,
                        size: 24,
                      ),
                      child: FilledIcon(
                        decoration: BoxDecoration(
                          color: accentColor.withValues(
                            alpha: isDark ? 0.25 : 0.1,
                          ),
                          borderRadius: const .all(.circular(10)),
                          border: Border.all(
                            color: accentColor.withValues(alpha: 0.1),
                          ),
                        ),
                        padding: const .all(12),
                        child: icon,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      title,
                      style: const TextStyle(fontSize: 18, fontWeight: .w700),
                      maxLines: 2,
                      overflow: .ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(color: colors.onSurfaceVariant),
                      maxLines: 2,
                      overflow: .ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

    return isDisabled
        ? Stack(
            alignment: .center,
            fit: .passthrough,
            children: [
              Opacity(opacity: 0.125, child: child),
              Center(
                child: Icon(
                  Icons.construction_rounded,
                  size: 48,
                  color: colors.onSurfaceVariant.withAlpha(150),
                ),
              ),
            ],
          )
        : child;
  }
}

class CustomCircle {
  const CustomCircle({
    required this.offset,
    required this.color,
    required this.radius,
  });

  final FractionalOffset offset;
  final Color color;
  final double radius;
}

class CirclesPainter extends CustomPainter {
  const CirclesPainter({required this.color}) : circles = null;
  const CirclesPainter.custom({required this.circles})
    : color = Colors.transparent;

  final Color color;
  final List<CustomCircle>? circles;

  @override
  void paint(Canvas canvas, Size size) {
    if (circles != null) {
      for (final circle in circles!) {
        final paint = Paint()
          ..color = circle.color
          ..style = PaintingStyle.fill;
        canvas.drawCircle(circle.offset.alongSize(size), circle.radius, paint);
      }
      return;
    }

    final paint1 = Paint()
      ..color = color.withValues(alpha: 0.1)
      ..style = PaintingStyle.fill;

    // Circle 1: Top Right
    canvas.drawCircle(Offset(size.width - 30, 30), 60, paint1);

    final paint2 = Paint()
      ..color = color.withValues(alpha: 0.08)
      ..style = PaintingStyle.fill;

    // Circle 2: Bottom Left
    canvas.drawCircle(Offset(20, size.height - 20), 40, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
