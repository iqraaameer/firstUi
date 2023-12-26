import 'package:flutter/material.dart';
class position extends StatelessWidget {
  const position({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Image.asset('assets/image/image3.png'),
    );
  }
}