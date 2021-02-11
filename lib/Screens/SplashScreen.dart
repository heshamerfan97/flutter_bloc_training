import 'package:flutter/material.dart';
import 'package:flutter_bloc_training/Configurations/Images.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Container(
              color: Colors.white.withOpacity(0.1),
              child: Image.asset(Images.Background, width: double.infinity, height: deviceHeight, fit: BoxFit.fill,)),
          Center(child: Image.asset(Images.Logo, width: deviceWidth*0.5, fit: BoxFit.fitWidth,),),
        ],
      ),
    );
  }
}
