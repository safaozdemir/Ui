import 'package:eventsapp/CustomeWidgets/customeAppBar.dart';
import 'package:eventsapp/CustomeWidgets/mainCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            CustomeAppBar(),
            SizedBox(height: 40,),
            Image.network('https://ih1.redbubble.net/image.300677647.9246/st,small,845x845-pad,1000x1000,f8f8f8.u2.jpg',height: size.height*0.23,),
            SizedBox(height: 40,),
            MainCard(text: 'Hot on TrendyTabs',tur: 4,),
            MainCard(text: 'Trending Now',tur:4),
            MainCard(text: 'FREE SHİPPİNG',tur:4),
          ],
        ),
      ),
    );
  }
}
