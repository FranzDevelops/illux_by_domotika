import 'package:flutter/material.dart';
import 'package:illux_by_domotika/common/constants/app_size.dart';

/// Custom text button with a fixed height
class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.text,
    super.key,
    this.style,
    this.onPressed,
  });
  final String text;
  final TextStyle? style;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.p48,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: style,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
