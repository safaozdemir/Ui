import 'package:eventsapp/Screens/getStarted.dart';
import 'package:eventsapp/Screens/homeScreen.dart';
import 'package:flutter/material.dart';

import '../navigationController.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://t4.ftcdn.net/jpg/02/66/71/71/360_F_266717164_J8Fqw4OcXRkKtNwFyHD02zIEsxPI7qHH.jpg',
                width: size.width * 0.8,
                height: size.height * 0.3,
              ),
              Container(
                width: size.width * 0.9,
                child: const Column(
                  children: [
                    Text(
                      "Welcome to TrendyTaps!",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "Snag amazing delas with every tap. Don't miss out!",
                      style: TextStyle(fontSize: 17, color: Color(0xff919191)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: size.width * 0.8,
                    height: size.height * 0.06,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GetStarted()));
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side: BorderSide(color: Colors.red))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xffcf0f04)),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NavigationController()));
                      },
                      child: Text(
                        'Skip Intro',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Already a member?',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
