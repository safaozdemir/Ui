import 'package:eventsapp/CustomeWidgets/newArrivalsCard.dart';
import 'package:eventsapp/CustomeWidgets/topCollectorCard.dart';
import 'package:flutter/material.dart';
import 'package:eventsapp/CustomeWidgets/exploreCollectionCard.dart';
import 'package:eventsapp/CustomeWidgets/freshEventCard.dart';
import 'package:eventsapp/CustomeWidgets/trendEventCard.dart';
import 'package:eventsapp/CustomeWidgets/trendingNowCard.dart';

class MainCard extends StatelessWidget {
  final String text;
  final int tur; // 1: ExploreCollectionCard, 2: FreshEventCard, 3: TopCollectorCard, 4: TrendEventCard

  const MainCard({Key? key, required this.text, required this.tur}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget card;

    switch (tur) {
      case 1:
        card = ExploreCollectionCard();
        break;
      case 2:
        card = FreshEventCard();
        break;
      case 3:
        card = TopCollectorCard(sayi: 4,);
        break;
      case 4:
        card = TrendEventCard();
        break;
      case 5:
        card = NewArrivalsCard();
        break;
      case 6:
        card = TrendingNowCard();
        break;
      default:
        card = ExploreCollectionCard();
    }

    return Container(
      width: size.width,
      height: size.height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 1, child: Container(color: Colors.grey.shade200,)),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Text(
                    "${text}",
                    style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1, child: Container(color: Colors.grey.shade100,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              card,
            ],
          ),
        ],
      ),
    );
  }
}
