import 'package:flutter/material.dart';
import 'package:my_app/screens/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  LoginScr()));
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assest/Image.png'),
            SizedBox(height: 10),
            Text(
              'AgroMart',
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}