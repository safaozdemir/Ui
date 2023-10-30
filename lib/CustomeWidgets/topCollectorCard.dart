import 'package:flutter/material.dart';

import '../Screens/detailScreen.dart';

class TopCollectorCard extends StatelessWidget {
  final int sayi;
  const TopCollectorCard({Key? key ,required this.sayi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const DetailScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
            width: size.width * 0.9,
            height: size.height * 0.12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: Text('$sayi',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
              ClipOval(
                child: CircleAvatar(
                  radius: 24,
                  child: Image.network(
                    'https://avatarfiles.alphacoders.com/123/thumb-123713.jpg',
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('@TrendyCollecto',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                  Text('1.000.000\$',style: TextStyle(fontSize: 17,),)
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
