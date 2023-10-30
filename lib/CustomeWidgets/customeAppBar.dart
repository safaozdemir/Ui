import 'package:eventsapp/Screens/searchScreen.dart';
import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.07,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.3,
              child: const Text(
                "DISCOVER TRENDS",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen()));
            }, icon: Icon(Icons.search,size: 32,))
          ],
        ),
      ),
    );
  }
}
