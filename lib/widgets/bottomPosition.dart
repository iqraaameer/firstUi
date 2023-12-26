import 'package:flutter/material.dart';
class bottomPosition extends StatelessWidget {
  const bottomPosition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Image.asset('assets/image/image1.png'),
    );
  }
}
