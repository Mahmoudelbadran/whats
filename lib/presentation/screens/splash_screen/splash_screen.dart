import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../core/change_pages/change_pages.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushNamedAndRemoveUntil(context, homeScreen, (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          height: 12.h,
            child: Image.asset("images/icons.png")),
      ),
    );
  }
}
