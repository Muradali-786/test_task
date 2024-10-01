import 'package:flutter/material.dart';
import 'package:test_task/services/splash/splash_services.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    SplashServices().isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text(
          'Splash Screen',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      )),
    );
  }
}
