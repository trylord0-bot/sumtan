import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class StartupSplash extends StatefulWidget {
  const StartupSplash({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<StartupSplash> createState() => _StartupSplashState();
}

class _StartupSplashState extends State<StartupSplash>
    with SingleTickerProviderStateMixin {
  static const _backgroundColor = Color(0xFF30BE77);
  static const _splashDuration = Duration(milliseconds: 1850);
  static const _fadeDuration = Duration(milliseconds: 320);

  late final AnimationController _particleController;
  Timer? _hideTimer;
  Timer? _removeTimer;
  bool _visible = true;
  bool _mountedOverlay = true;

  @override
  void initState() {
    super.initState();
    _particleController = AnimationController(
      vsync: this,
      duration: _splashDuration,
    )..forward();

    _hideTimer = Timer(_splashDuration, () {
      if (!mounted) return;
      setState(() => _visible = false);
      _removeTimer = Timer(_fadeDuration, () {
        if (!mounted) return;
        setState(() => _mountedOverlay = false);
      });
    });
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    _removeTimer?.cancel();
    _particleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        widget.child,
        if (_mountedOverlay)
          AnimatedOpacity(
            opacity: _visible ? 1 : 0,
            duration: _fadeDuration,
            curve: Curves.easeOut,
            child: IgnorePointer(
              ignoring: !_visible,
              child: ColoredBox(
                color: _backgroundColor,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    AnimatedBuilder(
                      animation: _particleController,
                      builder: (context, _) {
                        return CustomPaint(
                          painter: _SplashParticlePainter(
                            progress: _particleController.value,
                          ),
                        );
                      },
                    ),
                    Center(
                      child: FractionallySizedBox(
                        widthFactor: 0.5,
                        child: Image.asset(
                          'assets/splash/logo_512.png',
                          fit: BoxFit.contain,
                          gaplessPlayback: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _SplashParticlePainter extends CustomPainter {
  _SplashParticlePainter({required this.progress});

  final double progress;

  static const _particles = [
    _Particle(0.06, 0.014, 1.26, 0.044, 0.00, true),
    _Particle(0.14, 0.020, 1.18, 0.048, 0.08, false),
    _Particle(0.21, 0.012, 1.30, 0.038, 0.17, true),
    _Particle(0.79, 0.014, 1.22, 0.040, 0.04, false),
    _Particle(0.86, 0.020, 1.28, 0.046, 0.13, true),
    _Particle(0.94, 0.012, 1.16, 0.040, 0.22, false),
    _Particle(0.10, 0.018, 1.24, 0.036, 0.32, false),
    _Particle(0.90, 0.016, 1.20, 0.039, 0.39, true),
    _Particle(0.18, 0.012, 1.14, 0.034, 0.50, false),
    _Particle(0.82, 0.014, 1.18, 0.036, 0.58, true),
  ];

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white;
    final shortestSide = math.min(size.width, size.height);

    for (final particle in _particles) {
      final t =
          ((progress - particle.delay) / (1 - particle.delay)).clamp(0.0, 1.0);
      final eased = Curves.easeOutCubic.transform(t);
      final drift = math.sin((t * math.pi * 2) + particle.delay * 9) *
          particle.drift *
          shortestSide;
      final x = particle.x * size.width + drift;
      final y = size.height * (1.08 - eased * particle.travel);
      final opacity = math.sin(t * math.pi).clamp(0.0, 1.0);
      final scale = 0.72 + (1 - t) * 0.18;
      final particleSize = shortestSide * particle.size * scale;

      if (t <= 0 || t >= 1) continue;

      canvas.save();
      canvas.translate(x, y);
      canvas.rotate((particle.delay + progress) * math.pi * 1.6);
      paint.color = Colors.white.withValues(alpha: opacity * 0.92);
      if (particle.isHeart) {
        _drawHeart(canvas, paint, particleSize);
      } else {
        _drawStar(canvas, paint, particleSize);
      }
      canvas.restore();
    }
  }

  void _drawHeart(Canvas canvas, Paint paint, double size) {
    final path = Path()
      ..moveTo(0, size * 0.34)
      ..cubicTo(
        -size * 0.58,
        -size * 0.18,
        -size * 0.95,
        size * 0.36,
        0,
        size,
      )
      ..cubicTo(
        size * 0.95,
        size * 0.36,
        size * 0.58,
        -size * 0.18,
        0,
        size * 0.34,
      )
      ..close();
    canvas.drawPath(path.shift(Offset(0, -size * 0.5)), paint);
  }

  void _drawStar(Canvas canvas, Paint paint, double size) {
    final path = Path();
    const points = 5;
    final outerRadius = size * 0.58;
    final innerRadius = size * 0.24;

    for (var i = 0; i < points * 2; i++) {
      final radius = i.isEven ? outerRadius : innerRadius;
      final angle = -math.pi / 2 + i * math.pi / points;
      final point = Offset(math.cos(angle) * radius, math.sin(angle) * radius);
      if (i == 0) {
        path.moveTo(point.dx, point.dy);
      } else {
        path.lineTo(point.dx, point.dy);
      }
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _SplashParticlePainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}

class _Particle {
  const _Particle(
    this.x,
    this.drift,
    this.travel,
    this.size,
    this.delay,
    this.isHeart,
  );

  final double x;
  final double drift;
  final double travel;
  final double size;
  final double delay;
  final bool isHeart;
}
