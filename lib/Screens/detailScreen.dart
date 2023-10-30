import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Column(
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
                              "NFTrade",
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
                  SizedBox(
                    height: 0.3,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: size.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_outlined,
                            size: 30,
                          ),
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.heart_broken)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Welcome to",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            ClipOval(
                              child: CircleAvatar(
                                child: Image.network(
                                  'https://avatarfiles.alphacoders.com/123/thumb-123713.jpg',
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Discover the laters trend",
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xff919191)),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                          child: Container(
                            width: size.width,
                            height: size.height * 0.4,
                            child: Container(
                              width: size.width * 0.6,
                              height: size.height * 0.14,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.network(
                                    'https://cdn.vox-cdn.com/thumbor/E0NbixleJEIOUCWNzXpJd6wN_MA=/0x0:1800x2700/1000x1000/filters:focal(856x1604:857x1605)/cdn.vox-cdn.com/uploads/chorus_asset/file/24286088/226444_Mercedes_Avatar_DGolson_0011.jpg',
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                        ),
                        const Text(
                          "Product detail",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff919191),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          style:
                              TextStyle(fontSize: 17, color: Color(0xff919191)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Current",
                                    style: TextStyle(
                                        fontSize: 17, color: Color(0xff919191)),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "1.2 ETH",
                                    style: TextStyle(
                                        fontSize: 17,
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
                                    "Action end in",
                                    style: TextStyle(
                                        fontSize: 17, color: Color(0xff919191)),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "2 days 11 hours 36",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width * 0.55,
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
                                      hintText: 'Enter your bid',
                                      hintStyle: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 52,
                                width: size.width * 0.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: Colors.grey.shade500, // Sınır rengi
                                    width: 1.0, // Sınır kalınlığı
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.arrow_drop_down_outlined,color: Colors.grey.shade500,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3),
                          child:SizedBox(
                            width: size.width*0.9,
                            height: size.height*0.06,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Place Bid',
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
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.all(3),
                          child:SizedBox(
                            width: size.width*0.9,
                            height: size.height*0.06,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Buy Now',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.grey.shade900),
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25.0),
                                        side: BorderSide(color: Colors.grey.shade500))),
                                backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
