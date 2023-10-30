import 'package:eventsapp/CustomeWidgets/mainCard.dart';
import 'package:flutter/material.dart';

import '../CustomeWidgets/freshEventCard.dart';

class Fresh extends StatelessWidget {
  const Fresh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: size.height * 0.07,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      size: 30,
                    ),
                  ),
                  Container(
                    width: size.width * 0.3,
                    child: const Text(
                      "Fresh",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,mainAxisExtent: 270
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MainCard(text: '', tur: 2,),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
