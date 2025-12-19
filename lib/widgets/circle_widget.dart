import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    super.key,
    required this.child,
    this.label = "",
    this.color,
  });

  final Widget child;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    double size = 56;
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: color != null
                ? null
                : Border.all(color: Colors.grey.shade400, width: 2),
          ),
          child: child,
        ),
        if (label.isNotEmpty)
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey[800],
              fontWeight: FontWeight.w600,
            ),
          ),
      ],
    );
  }
}
