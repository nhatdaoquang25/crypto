import 'package:flutter/material.dart';

const LinearGradient backgroundGradient = LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  colors: [Color(0xFF17EAD9), Color(0xFF6078EA)],
);

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double spacerTop = screenWidth / 5;

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("SEARCH",
              style: TextStyle(color: Colors.white, fontSize: 25)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(gradient: backgroundGradient),
          child: Column(
            children: [
              SizedBox(height: spacerTop),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Enter your name",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Card(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey,
                            ),
                            child: Center(child: Text("1")),
                          ),
                          Expanded(
                              child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                    "https://assets.coingecko.com/coins/images/1/thumb/bitcoin.png"),
                              ),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "BTC/USD",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.arrow_drop_down_sharp,
                                            color: Colors.red,
                                          ),
                                          Text("11.62 (-0.5%)"),
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$1234",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Row(
                                          children: [
                                            Text("High"),
                                            Spacer(),
                                            Text(
                                              "\$1234",
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("Low"),
                                            Spacer(),
                                            Text(
                                              "\$1234",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ))
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
