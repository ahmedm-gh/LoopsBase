import 'dart:math';
import 'dart:developer' as dev;

import 'package:flutter/material.dart';

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({super.key, this.useLifecycle = true});

  final bool useLifecycle;

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  late final AnimationController _starsController;

  final List<_Star> _stars = [];
  final Random _rng = Random();

  bool _isActive = true;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    _starsController =
        AnimationController(
            vsync: this,
            duration: const Duration(milliseconds: 16),
          )
          ..addListener(_tickStars)
          ..repeat();
  }

  @override
  void deactivate() {
    if (widget.useLifecycle) {
      _isActive = false;
      _stop();
    }
    super.deactivate();
  }

  @override
  void activate() {
    super.activate();
    if (widget.useLifecycle) {
      _isActive = true;
      _start();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!widget.useLifecycle) return;

    if (state case .resumed) {
      if (_isActive && !_starsController.isAnimating) {
        _start();
      }
    } else {
      if (_starsController.isAnimating) {
        _stop();
      }
    }
  }

  void _stop() {
    _starsController.stop();
    dev.log("$AnimatedBackground stop");
  }

  void _start() {
    _starsController.repeat();
    dev.log("$AnimatedBackground start");
  }

  void _initStars() {
    if (_stars.isNotEmpty) return;
    for (int i = 0; i < 180; i++) {
      _stars.add(_Star.random(_rng));
    }
  }

  void _tickStars() {
    for (final s in _stars) {
      s.y -= s.speed;
      s.opacity += (_rng.nextDouble() - 0.5) * 0.02;
      s.opacity = s.opacity.clamp(0.05, 0.9);
      if (s.y < 0) {
        s.y = _Star.size.height;
        s.x = _rng.nextDouble() * _Star.size.width;
      }
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _starsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        _Star.size = Size(constraints.maxWidth, constraints.maxHeight);

        _initStars();

        return AnimatedBuilder(
          animation: _starsController,
          builder: (_, _) {
            return CustomPaint(
              size: _Star.size,
              painter: _StarfieldPainter(_stars, colors.primary),
            );
          },
        );
      },
    );
  }
}

class _Star {
  _Star({
    required this.x,
    required this.y,
    required this.radius,
    required this.speed,
    required this.opacity,
  });

  factory _Star.random(Random rng) {
    return _Star(
      x: rng.nextDouble() * size.width,
      y: rng.nextDouble() * size.height,
      radius: rng.nextDouble() * 0.75 + 0.25,
      speed: rng.nextDouble() * 0.15 + 0.05,
      opacity: rng.nextDouble() * 0.5,
    );
  }

  static Size size = const Size(0, 0);

  double x;
  double y;
  final double radius;
  final double speed;
  double opacity;
}

class _StarfieldPainter extends CustomPainter {
  _StarfieldPainter(this.stars, this.color);

  final List<_Star> stars;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = .fill;
    for (final star in stars) {
      paint.color = color.withValues(alpha: star.opacity * 0.5);
      canvas.drawCircle(Offset(star.x, star.y), star.radius, paint);
    }
  }

  @override
  bool shouldRepaint(_StarfieldPainter old) => true;
}
