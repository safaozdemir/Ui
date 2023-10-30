import 'package:eventsapp/CustomeWidgets/freshEventCard.dart';
import 'package:eventsapp/CustomeWidgets/topCollectorCard.dart';
import 'package:eventsapp/CustomeWidgets/trendEventCard.dart';
import 'package:eventsapp/CustomeWidgets/trendingNowCard.dart';
import 'package:flutter/material.dart';

class TopCollector extends StatelessWidget {
  final String text;
  const TopCollector({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height*0.60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 1,child: Container(color: Colors.grey.shade200,),),
               Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(child: Text(
                  "${text}",
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),),
              ),
              SizedBox(height: 1,child: Container(color: Colors.grey.shade100,),),
            ],
          ),
          Column(
            children: [
              TopCollectorCard(sayi: 1,),
              SizedBox(height: 0.2,child: Container(color: Colors.black,),),
              TopCollectorCard(sayi: 2,),
              SizedBox(height: 0.2,child: Container(color: Colors.black,),),
              TopCollectorCard(sayi: 3,),
              SizedBox(height: 0.2,child: Container(color: Colors.black,),),
              TopCollectorCard(sayi: 4,),
            ],
          )
        ],
      ),
    );
  }
}
