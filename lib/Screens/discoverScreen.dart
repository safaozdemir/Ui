import 'package:eventsapp/CustomeWidgets/topCollector.dart';
import 'package:flutter/material.dart';

import '../CustomeWidgets/mainCard.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.07,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * 0.3,
                        child: const Text(
                          "Discover",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.search)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.menu))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              MainCard(text: 'Trending Now',tur: 6,),
              SizedBox(height: size.height*0.04,),
              MainCard(text: 'Explore Collections',tur: 1,),
              SizedBox(height: size.height*0.04,),
              MainCard(text: 'New Arrivals',tur: 5,),
              SizedBox(height: size.height*0.04,),
              TopCollector(text: 'Top Collectors'),
              SizedBox(height: 20,),
              const Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  "Subscribe to our Newsletter",
                  style:
                  TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: size.width * 00.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.grey.shade500, // Sınır rengi
                    width: 1.0, // Sınır kalınlığı
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      hintText: 'Enter your email adress',
                      hintStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.all(3),
                child:SizedBox(
                  width: size.width*0.9,
                  height: size.height*0.06,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Subscribe',
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
              ),

            ],
        ),
          ),
        ] ,
      ),
    );
  }
}
