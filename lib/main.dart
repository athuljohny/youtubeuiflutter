import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Youtube(),
  ));
}

class Youtube extends StatefulWidget {
  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  int selectedindex = 0;

  void onitemtap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedindex,
        onTap: onitemtap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined), label: "Subscription"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library), label: "Library"),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
              child: Row(
                children: <Widget>[
                  Image.network(
                    "https://lh3.googleusercontent.com/3zkP2SYe7yYoKKe47bsNe44yTgb4Ukh__rBbwXwgkjNRe4PykGG409ozBxzxkrubV7zHKjfxq6y9ShogWtMBMPyB3jiNps91LoNH8A=s500",
                    height: 50.0,
                    width: 100.0,
                  ),
                  Spacer(),
                  Icon(
                    Icons.videocam,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5.0),
              child: Container(
                height: 30.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        child: Text(
                          "All",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        child: Text(
                          "Comedy Movies",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        child: Text(
                          "iPhones",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        child: Text(
                          "BodyBuilding",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        child: Text(
                          "Cricket",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        child: Text(
                          "HTML",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7zGqHuSRdkztKirN1RTHWkEPIg_d5gc__Kg&usqp=CAU"),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 15.0, right: 10.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Flutter Mail App UI Design",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: <Widget>[
                                Text("Protorix Code"),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("1k views"),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("1 week ago"),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Image.network(
                    "https://image.shutterstock.com/image-photo/stability-cushion-running-shoes-new-260nw-1958445436.jpg",
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 15.0, right: 10.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Flutter Nike Shoes App UI Design",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: <Widget>[
                                Text("Protorix Code"),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("1.5k views"),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("2 week ago"),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN67LIuB7A6wrq7wEt0QMJ8r_0FIQ2-XClJQ&usqp=CAU"),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 15.0, right: 10.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Flutter Travel App UI Design",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: <Widget>[
                                Text("Protorix Code"),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("2k views"),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("1 month ago"),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
