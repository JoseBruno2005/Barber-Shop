import 'package:barbeariaflutter/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashSceenState extends StatefulWidget {
  const SplashSceenState({super.key});

  @override
  State<SplashSceenState> createState() => __SplashSceenStateState();
}

class __SplashSceenStateState extends State<SplashSceenState> {

  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      (){
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => const loginPage(),
          ));
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/SHOP.png'),
            fit: BoxFit.cover
          )
        ),
      )
    );
  }
}