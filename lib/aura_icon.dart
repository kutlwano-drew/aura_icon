import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

/// Defines the available shapes for the AuraIcon widget.
enum AuraShape {
  /// A fully circular shape (default).
  circle,

  /// A square shape with customizable border radius.
  square,

  /// Freely floating circles without any clipping.
  floatingCircles
}

/// A customizable animated glowing icon inspired by "lava lamp" or
/// ChatGPT/Siri-like UI.
///
/// You can choose the shape, size, colors, and behavior of the animation.
class AuraIcon extends StatefulWidget {
  /// Overall size (width & height) of the icon.
  final double size;

  /// Base radius for the animated blobs.
  final double radius;

  /// Optional tap callback for interactivity.
  final VoidCallback? onTap;

  /// Shape style of the AuraIcon (circle, square, or floating circles).
  final AuraShape shape;

  /// Border radius (only applies when shape is [AuraShape.square]).
  final double borderRadius;

  /// Optional list of colors for blobs.
  /// If null, random glow-like colors will be generated.
  final List<Color>? colors;

  const AuraIcon({
    Key? key,
    this.size = 250,
    this.radius = 40,
    this.onTap,
    this.shape = AuraShape.circle,
    this.borderRadius = 20,
    this.colors,
  }) : super(key: key);

  @override
  State<AuraIcon> createState() => _AuraIconState();
}

class _AuraIconState extends State<AuraIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<_AuraBlob> _blobs;

  @override
  void initState() {
    super.initState();

    // Create a list of animated blobs with random positions/colors.
    _blobs = List.generate(
      5,
      (_) => _AuraBlob(
        widget.size,
        widget.radius,
        widget.colors,
      ),
    );

    // Animation controller to continuously update blob positions.
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..addListener(() {
        setState(() {
          for (final blob in _blobs) {
            blob.update();
          }
        });
      });

    // Loop animation forever.
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    // Create the painted animated blobs.
    Widget painted = CustomPaint(painter: _AuraPainter(_blobs));

    // Apply clipping based on selected shape.
    switch (widget.shape) {
      case AuraShape.circle:
        painted = ClipOval(child: painted);
        break;
      case AuraShape.square:
        painted = ClipRRect(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          child: painted,
        );
        break;
      case AuraShape.floatingCircles:
        // No clipping for floating circles.
        break;
    }

    // Wrap in gesture detector for tap handling.
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: painted,
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the animation controller when the widget is removed.
    _controller.dispose();
    super.dispose();
  }
}

/// Represents a single animated blob in the AuraIcon.
class _AuraBlob {
  /// Current position of the blob.
  Offset position;

  /// Movement velocity vector of the blob.
  Offset velocity;

  /// Radius of the blob.
  double radius;

  /// Color of the blob.
  Color color;

  /// Overall size of the drawable area.
  final double size;

  /// Random number generator for position and velocity.
  final Random random = Random();

  _AuraBlob(this.size, double baseRadius, List<Color>? customColors)
      : position = Offset(
          // Random starting position within bounds.
          50 + Random().nextDouble() * (size - 100),
          50 + Random().nextDouble() * (size - 100),
        ),
        velocity = Offset.fromDirection(
          // Random direction and speed.
          Random().nextDouble() * 2 * pi,
          0.4 + Random().nextDouble() * 0.8,
        ),
        radius = baseRadius + Random().nextDouble() * baseRadius,
        color = _pickColor(customColors);

  /// Picks either a random color from [customColors] or generates a
  /// glow-like HSV-based color.
  static Color _pickColor(List<Color>? customColors) {
    final random = Random();
    if (customColors != null && customColors.isNotEmpty) {
      return customColors[random.nextInt(customColors.length)];
    }
    return HSVColor.fromAHSV(
      1,
      random.nextDouble() * 360, // Hue
      0.7 + random.nextDouble() * 0.3, // Saturation
      1.0, // Value
    ).toColor();
  }

  /// Updates the blob's position and reverses direction if hitting bounds.
  void update() {
    position += velocity;

    if (position.dx <= 0 || position.dx >= size) {
      velocity = Offset(-velocity.dx, velocity.dy);
    }
    if (position.dy <= 0 || position.dy >= size) {
      velocity = Offset(velocity.dx, -velocity.dy);
    }
  }
}

/// Handles drawing the animated blobs onto the canvas.
class _AuraPainter extends CustomPainter {
  /// List of blobs to draw.
  final List<_AuraBlob> blobs;

  _AuraPainter(this.blobs);

  @override
  void paint(Canvas canvas, Size size) {
    final layerPaint = Paint();
    canvas.saveLayer(null, layerPaint);

    for (final blob in blobs) {
      final blobPaint = Paint()
        ..color = blob.color.withOpacity(0.55)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2)
        ..style = PaintingStyle.fill;

      // Draw a single blurred glowing blob.
      canvas.drawCircle(blob.position, blob.radius, blobPaint);
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
