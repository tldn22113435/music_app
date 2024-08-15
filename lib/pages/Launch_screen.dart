import 'package:flutter/material.dart';
import 'package:music_app/pages/Welcome.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Stack(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/musium.png'),
                  height: double.infinity,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 40.0,
                  right: 5.0,
                  left: 5.0,
                  child: Image(
                    image: AssetImage('assets/images/luna.png'),
                    height: 200,
                    width: 200,
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
