import "package:flutter/material.dart";

enum CustomIndicatorTapBarSize {
  tiny,
  normal,
  full,
}

class CustomIndicatorTapBar extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final CustomIndicatorTapBarSize indicatorSize;

  const CustomIndicatorTapBar(
      {required this.indicatorHeight,
      required this.indicatorColor,
      required this.indicatorSize});

  @override
  _CustomIndicatorTapBarPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomIndicatorTapBarPainter(this, onChanged!);
  }
}

class _CustomIndicatorTapBarPainter extends BoxPainter {
  final CustomIndicatorTapBar decoration;

  _CustomIndicatorTapBarPainter(this.decoration, VoidCallback onChanged)
      : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    Rect rect = Rect.zero;
    if (decoration.indicatorSize == CustomIndicatorTapBarSize.full) {
      rect = Offset(offset.dx,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(configuration.size!.width, decoration.indicatorHeight);
    } else if (decoration.indicatorSize == CustomIndicatorTapBarSize.normal) {
      rect = Offset(offset.dx + 8,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(configuration.size!.width - 12, decoration.indicatorHeight);
    } else if (decoration.indicatorSize == CustomIndicatorTapBarSize.tiny) {
      rect = Offset(offset.dx + configuration.size!.width / 2 - 8,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(16, decoration.indicatorHeight);
    } else {
      Size(0, decoration.indicatorHeight);
    }

    final Paint paint = Paint();
    paint.color = decoration.indicatorColor;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect,
            topRight: const Radius.circular(8),
            topLeft: const Radius.circular(8)),
        paint);
  }
}
