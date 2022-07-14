import 'package:flutter/material.dart';
import 'package:newsapp/constant/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigator();
  }

  navigator() async {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(homeScreenRoutes, (route) => false);
    });
  }

  @override
  void dispose() {
    super.dispose();
    navigator();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "Assets/bg.png",
              ),
              fit: BoxFit.contain),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "We show news for you!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        homeScreenRoutes, (route) => false);
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
