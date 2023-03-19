import 'package:flash/src/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.color,
  });
  final String text;
  final void Function()? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        fixedSize: Size(
          MediaQuery.of(context).size.width - 30,
          50,
        ),
        backgroundColor: color,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyle.btnStyle,
      ),
    );
  }
}
