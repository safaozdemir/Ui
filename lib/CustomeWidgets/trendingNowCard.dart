import 'package:flutter/material.dart';

import '../Screens/detailScreen.dart';

class TrendingNowCard extends StatelessWidget {
  const TrendingNowCard({Key? key}) : super(key: key);

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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade300),
          width: size.width * 0.45,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width * 0.6,
                height: size.height * 0.20,
                child:Padding(
                  padding: const EdgeInsets.only(top:4.0,right: 10,left: 10),
                  child: Container(
                    width: size.width * 0.6,
                    height: size.height * 0.20,
                    child: Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: <Widget>[
                        Container(
                          width: size.width * 0.6,
                          height: size.height * 0.19,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network(
                                'https://i.redd.it/vo9vm1fcqrp71.jpg',
                                fit: BoxFit.fill,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 14.0,top: 5),
                          child:Icon(Icons.heart_broken,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Limited",
                          style: TextStyle(
                              fontSize: 17, color: Color(0xff919191)),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "4.1 ETH",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Container(
                        height: 52,
                        width: size.width * 0.22,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.grey.shade500, // Sınır rengi
                            width: 2.0, // Sınır kalınlığı
                          ),
                        ),
                        child: Center(child: Text('BuyNow'),)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
