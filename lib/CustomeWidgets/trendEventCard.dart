import 'package:flutter/material.dart';

import '../Screens/detailScreen.dart';

class TrendEventCard extends StatelessWidget {
  const TrendEventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      flex: 1,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: (){

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey.shade300),
                width: size.width * 0.6,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(

                      width: size.width * 0.6,
                      height: size.height * 0.14,
                      child: Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top:4.0,right: 10,left: 10),
                            child: Container(
                              width: size.width * 0.6,
                              height: size.height * 0.14,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.network(
                                    'https://c4.wallpaperflare.com/wallpaper/289/167/630/2000x1000-px-action-artwork-asian-wallpaper-preview.jpg',
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 14.0,top: 5),
                            child: Container(
                              width: size.width * 0.25,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'ShopNow',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(25.0),
                                          side:
                                          BorderSide(color: Colors.black))),
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child:  Container(width: size.width,
                        child: const Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height:5,
                            ),
                            Text(
                              "Discover the laters trend and",
                              style:
                              TextStyle(fontSize: 11),
                            ),
                          ],),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0,left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Icon(Icons.star),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "FREE",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],),

                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text(
                              "FREE",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey.shade300),
                width: size.width * 0.6,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(

                      width: size.width * 0.6,
                      height: size.height * 0.14,
                      child: Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top:4.0,right: 10,left: 10),
                            child: Container(
                              width: size.width * 0.6,
                              height: size.height * 0.14,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.network(
                                    'https://i.redd.it/vo9vm1fcqrp71.jpg',
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 14.0,top: 5),
                            child: Container(
                              width: size.width * 0.25,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'ShopNow',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(25.0),
                                          side:
                                          BorderSide(color: Colors.black))),
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child:  Container(width: size.width,
                        child: const Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height:5,
                            ),
                            Text(
                              "Discover the laters trend and",
                              style:
                              TextStyle(fontSize: 11),
                            ),
                          ],),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0,left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Icon(Icons.star),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "FREE",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],),

                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text(
                              "FREE",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
