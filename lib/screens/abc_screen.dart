import 'package:app_crypto_coin/screens/home_screen.dart';
import 'package:app_crypto_coin/screens/search_screen.dart';
import 'package:flutter/material.dart';

const LinearGradient backgroundGradient = LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  colors: [Color(0xFF17EAD9), Color(0xFF6078EA)],
);

class AbcScreen extends StatelessWidget {
  const AbcScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("COIN LIST",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
      body: Container(
          decoration: BoxDecoration(gradient: backgroundGradient),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 9,
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 20),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 5),
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
                                  child: Center(child: Text("${index + 1}")),
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
                                                    style: TextStyle(
                                                        color: Colors.red),
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
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
