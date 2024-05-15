import 'package:flutter/material.dart';

class FixedButton extends StatelessWidget {
  const FixedButton({
    super.key,
    required this.title,
    required this.textStyle,
    required this.function,
    this.isLoading = false,
  });
  final String title;
  final TextStyle textStyle;
  final Function function;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 52, 168, 83),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  title,
                  style: textStyle,
                ),
        ),
      ),
    );
  }
}
