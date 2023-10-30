import 'package:eventsapp/Screens/homeScreen.dart';
import 'package:eventsapp/navigationController.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.local_post_office_outlined,
                    size: 100,
                    color: Colors.black,
                  ),
                  radius: 75,
                  backgroundColor: Colors.grey.shade300,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width * 0.9,
                  child: const Column(
                    children: [
                      Text(
                        "Welcome to",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Discover the laters trend and snag amazing deals with every tap.",
                        style:
                            TextStyle(fontSize: 17, color: Color(0xff919191)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavigationController()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(color: Colors.red))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xffcf0f04)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
