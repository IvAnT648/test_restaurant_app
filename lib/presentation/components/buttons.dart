import 'package:flutter/cupertino.dart';

import '../../core/resources/design.dart';

class FullWidthButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? textColor;
  final Color? fillColor;

  const FullWidthButton({
    super.key,
    required this.onTap,
    required this.text,
    this.textColor,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 30,
        ),
        color: fillColor ?? Design.themeData.barBackgroundColor,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Design.errorColor,
          ),
        ),
      ),
    );
  }
}
