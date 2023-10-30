import 'package:flutter/material.dart';

import '../Screens/detailScreen.dart';

class ExploreCollectionCard extends StatelessWidget {
  const ExploreCollectionCard({Key? key}) : super(key: key);

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
            border: Border.all(color: Colors.grey.shade500),
              borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
              color: Colors.white),
          width: size.width * 0.45,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width * 0.6,
                height: size.height * 0.20,
                child:Container(
                  width: size.width * 0.6,
                  height: size.height * 0.20,
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: <Widget>[
                      Container(
                        width: size.width * 0.6,
                        height: size.height * 0.19,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                            child: Image.network(
                              'https://www.apm.org.uk/v2/media/pssp5c0s/introimage-resources-whatisprojectmanagement-1000x1000-1.jpg',
                              fit: BoxFit.fill,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 130.0,top: 140),
                        child:ClipOval(
                          child: CircleAvatar(
                            child: Image.network(
                              'https://avatarfiles.alphacoders.com/123/thumb-123713.jpg',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 110.0,top: 140),
                        child:ClipOval(
                          child: CircleAvatar(
                            child: Image.network(
                              'https://64.media.tumblr.com/e775f7195176c4e70f2654f1d5ff0bfe/tumblr_inline_phvike3zgg1t0myks_500.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 18.0,bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Home Decor",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
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
