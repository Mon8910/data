import 'package:flutter/material.dart';

class ContainerActive extends StatelessWidget {
  const ContainerActive({
    super.key,
    this.isActive = false,
    required this.image,
  });
  final bool isActive;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child: Container(
        height: 65,
        width: 90,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5,
              color: isActive
                  ? const Color.fromARGB(255, 52, 168, 83)
                  : Colors.grey,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: [
            BoxShadow(
                color: isActive
                    ? const Color.fromARGB(255, 52, 168, 83)
                    : Colors.white,
                blurRadius: 4,
                offset: const Offset(0, 0),
                spreadRadius: 0),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Image.asset(
            image,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
