import 'package:flutter/material.dart';

import '../Screens/detailScreen.dart';

class NewArrivalsCard extends StatelessWidget {
  const NewArrivalsCard({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Cute Animal",
                      style: TextStyle(
                          fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    ClipOval(
                      child: CircleAvatar(
                        radius: 15,
                        child: Image.network(
                          'https://avatarfiles.alphacoders.com/123/thumb-123713.jpg',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                  ],
                ),
              ),
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
                padding: const EdgeInsets.only(bottom: 8.0,top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current",
                          style: TextStyle(
                              fontSize: 15, color: Color(0xff919191)),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "1.2 ETH",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Time left",
                          style: TextStyle(
                              fontSize: 15, color: Color(0xff919191)),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "2h 18m",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
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
