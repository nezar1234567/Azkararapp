import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}


class _LaunchScreenState extends State<LaunchScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState');
    Future.delayed(Duration(seconds: 3), () {
      // Navigator.pushReplacementNamed(context, '/users_screen');
      // Navigator.pushReplacementNamed(context, '/AppScreen');
      // Navigator.pushReplacementNamed(context, '/product_screen');
      // Navigator.pushReplacementNamed(context, '/home_screen');
      // Navigator.pushReplacementNamed(context, '/login_screen');
      Navigator.pushReplacementNamed(context, '/bn_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    print('build');
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFF82B6F6),
              Color(0xFFFFEEBB),
            ],
          )
        ),
        child:const Text('UCAS',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,

        ),
        ),
      ),
    );
  }
}
