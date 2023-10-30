import 'package:eventsapp/Screens/detailScreen.dart';
import 'package:flutter/material.dart';

class FreshEventCard extends StatelessWidget {
  const FreshEventCard({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade300),
          width: size.width * 0.4,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(

                width: size.width * 0.6,
                height: size.height * 0.14,
                child:Padding(
                  padding: const EdgeInsets.only(top:4.0,right: 10,left: 10),
                  child: Container(
                    width: size.width * 0.6,
                    height: size.height * 0.14,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                          'https://www.kgcus.com/cdn/shop/articles/clementines-blog-photos.jpg?v=1652455169',
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 8.0),
                    child:  Container(width: size.width,
                      child: const Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Crisp Cucumber",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height:5,
                          ),
                        ],),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          "\$1.2",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "/1 Piece",
                          style:
                          TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(3),
                child:SizedBox(
                  width: size.width*0.34,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
