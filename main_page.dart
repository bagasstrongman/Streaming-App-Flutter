import 'package:flutter/material.dart';
import 'package:flutter_streaming_app/stream_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Container(
          margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.02,
          ),
          width: MediaQuery.of(context).size.width * 0.05,
          height: MediaQuery.of(context).size.width * 0.05,
          child: Image(
            image: AssetImage("assets/Menu.png"),
          ),
        ),
        actions: [
          Stack(children: [
            Container(
              margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.05,
                top: 10,
                bottom: 5,
              ),
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/Avatar.png"),
                  )),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(left: 28, top: 4),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent.shade400),
              ),
            )
          ])
        ],
      ),
      body: Stack(children: [
        ListView(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.05,
            //color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                      //color: Colors.white
                      ),
                  child: Text(
                    "Your Favorite",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                      //color: Colors.white
                      ),
                  child: Text(
                    "Streams",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent.shade200),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: MediaQuery.of(context).size.height * 0.05,
                  //color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05,
                        ),
                        width: MediaQuery.of(context).size.width * 0.15,
                        //height: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.greenAccent.shade200),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "All",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                        ),
                        width: MediaQuery.of(context).size.width * 0.2,
                        //height: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey.shade900),
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return StreamPage();
                            }));
                          },
                          color: Colors.black.withOpacity(0.05),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Esport",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                        ),
                        width: MediaQuery.of(context).size.width * 0.2,
                        //height: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey.shade900),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Channels",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                        ),
                        width: MediaQuery.of(context).size.width * 0.2,
                        //height: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey.shade900),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Categories",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                        ),
                        width: MediaQuery.of(context).size.width * 0.15,
                        //height: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey.shade900),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Games",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          //right: MediaQuery.of(context).size.width * 0.03,
                        ),
                        width: MediaQuery.of(context).size.width * 0.15,
                        //height: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey.shade900),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Mobile",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          //right: MediaQuery.of(context).size.width * 0.03,
                        ),
                        width: MediaQuery.of(context).size.width * 0.2,
                        //height: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey.shade900),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Computer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          //right: MediaQuery.of(context).size.width * 0.03,
                        ),
                        width: MediaQuery.of(context).size.width * 0.15,
                        //height: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey.shade900),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "PUBG",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          //right: MediaQuery.of(context).size.width * 0.03,
                        ),
                        width: MediaQuery.of(context).size.width * 0.15,
                        //height: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey.shade900),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "CODM",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          //right: MediaQuery.of(context).size.width * 0.03,
                        ),
                        width: MediaQuery.of(context).size.width * 0.3,
                        //height: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey.shade900),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Mobile legends",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          right: MediaQuery.of(context).size.width * 0.03,
                        ),
                        width: MediaQuery.of(context).size.width * 0.25,
                        //height: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey.shade900),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Platfomers",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Live Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          width: 30,
                          child: Image(
                            image: AssetImage("assets/More.png"),
                          ),
                        )
                      ]),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/Card4.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/Card2.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/Card3.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/Card1.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03,
                            right: MediaQuery.of(context).size.width * 0.05),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/Card5.png"),
                        )),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Popular Streamers",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          width: 30,
                          child: Image(
                            image: AssetImage("assets/More.png"),
                          ),
                        )
                      ]),
                ),
                SizedBox(height: 10),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/MiniCard3.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/MiniCard2.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/MiniCard1.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/MiniCard4.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/MiniCard5.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.03,
                          right: MediaQuery.of(context).size.width * 0.05,
                        ),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/MiniCard6.png"),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Top Categories",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          width: 30,
                          child: Image(
                            image: AssetImage("assets/More.png"),
                          ),
                        )
                      ]),
                ),
                SizedBox(height: 15),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/Games2.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/Games3.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/Games4.png"),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/Games5.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/Games1.png"),
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            image: DecorationImage(
                          image: AssetImage("assets/Games3.png"),
                        )),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                )
              ],
            ),
          )
        ]),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(color: Colors.black87),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 40,
                  child: Image(image: AssetImage("assets/Menu1.png")),
                ),
                Container(
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image(
                    image: AssetImage("assets/Menu2.png"),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image(
                    image: AssetImage("assets/Menu3.png"),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image(
                    image: AssetImage("assets/Menu4.png"),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
