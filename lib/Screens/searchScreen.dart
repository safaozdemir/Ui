import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var tags = [
    "Burgers",
    "Kebap",
    "Pizza",
    "Sushi",
    "Sandwiches",
    "Indian",
    "Cafes",
    "Dessert",
    "Steak",
    "Japanese",
    "Pasta",
  ];
  var tags2 = [
    "Open Now",
    "Free Delivery",
    "Star Rate",
  ];

  var selectedTags = ["Burgers", "Sandwiches", "Cafes", "Dessert", "Japanese"];
  var selectedTags2 = ["Open Now"];

  List<Widget> generateTags() {
    return tags.map((tag) => getChip(tag)).toList();
  }
  List<Widget> generateTags2() {
    return tags2.map((tag) => getChip2(tag)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: size.height * 0.07,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButton(),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all()),
                      width: size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: size.width * 0.65,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, right: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  hintText: 'Search for trendy product..',
                                  hintStyle: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.close,
                                size: 20,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.5,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SizedBox(
                                child: Text(
                                  "Trending Filters",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        ),
                        Wrap(
                          spacing: 7.0, // Adjacent chip spacing
                          runSpacing: 2.0, // Gap between lines
                          children: generateTags(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1,
                      child: Container(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: Text(
                              "Sort By Trendliness",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Wrap(
                          spacing: 7.0, // Adjacent chip spacing
                          runSpacing: 2.0, // Gap between lines
                          children: generateTags2(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getChip(name) {
    return FilterChip(
      selected: selectedTags.contains(name),
      onSelected: (bool selected) {
        setState(() {
          if (selected) {
            selectedTags.add(name);
          } else {
            selectedTags.remove(name);
          }
        });
      },
      backgroundColor: Colors.white,
      selectedColor: Colors.red.shade600,
      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      label: Text("$name"),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Köşe yuvarlama miktarı
      ),
    );
  }
  Widget getChip2(name) {
    return FilterChip(
      selected: selectedTags2.contains(name),
      onSelected: (bool selected) {
        setState(() {
          if (selected) {
            selectedTags2.add(name);
          } else {
            selectedTags2.remove(name);
          }
        });
      },
      backgroundColor: Colors.white,
      selectedColor: Colors.red.shade600,
      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      label: Text("$name",style: TextStyle(fontSize: 19),),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Köşe yuvarlama miktarı
      ),
    );
  }
}
