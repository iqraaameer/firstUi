import 'package:flutter/material.dart';
import 'package:project/screens/welcome.dart';
import 'package:project/widgets/bottomPosition.dart';
import 'package:project/widgets/position.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const welcome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const position(),
          Center(
            child: Image.asset('assets/image/lug.png'),
          ),
          const bottomPosition(),
        ],
      ),
    );
  }
}
