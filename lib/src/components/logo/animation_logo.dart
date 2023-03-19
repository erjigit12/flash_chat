// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class AnimationLogo extends StatefulWidget {
  const AnimationLogo({
    super.key,
    this.size = 80,
  });
  final double size;

  @override
  State<AnimationLogo> createState() => _AnimationLogoState();
}

class _AnimationLogoState extends State<AnimationLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    controller.forward();

    animation.addStatusListener((status) {});

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: SizedBox(
        child: Image.asset('assets/logo.png'),
        height: controller.value * widget.size,
      ),
    );
  }
}
