import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mentalhealthapp/pages/consultant.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue[800],
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // greetings
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Jigar!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Jigar!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "23 jan, 2021",
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),

                      //Notification Icon
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return Consultant();
                            },
                          ));
                        },
                        child: GestureDetector(
                          onTap: () {
                            Fluttertoast.showToast(
                                msg: "There is no new notification",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 2,
                                backgroundColor: Colors.amber,
                                textColor: Colors.white,
                                fontSize: 15);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12)),
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  // search bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(4),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  // How do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //4 differant faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Fluttertoast.showToast(
                                  msg: "Bad 😔",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 2,
                                  backgroundColor: Colors.amber,
                                  textColor: Colors.white,
                                  fontSize: 15);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.all(16),
                              child: Center(
                                  child: Text(
                                "😔",
                                style: TextStyle(fontSize: 28),
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Bad",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: "Fine 😊",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 2,
                              backgroundColor: Colors.amber,
                              textColor: Colors.white,
                              fontSize: 15);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.all(16),
                              child: Center(
                                  child: Text(
                                "😊",
                                style: TextStyle(fontSize: 28),
                              )),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Fine",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      //well
                      GestureDetector(
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: "Well 😁",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 2,
                              backgroundColor: Colors.amber,
                              textColor: Colors.white,
                              fontSize: 15);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.all(16),
                              child: Center(
                                  child: Text(
                                "😁",
                                style: TextStyle(fontSize: 28),
                              )),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Well",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      // excellent
                      GestureDetector(
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: "😃",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 2,
                              backgroundColor: Colors.amber,
                              textColor: Colors.white,
                              fontSize: 15);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.all(16),
                              child: Center(
                                  child: Text(
                                "😃",
                                style: TextStyle(fontSize: 28),
                              )),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Excellent",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(25),
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Excercises",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: FutureBuilder<http.Response>(
                          future: getDataFromWebServer(),
                          builder: (BuildContext context,
                              AsyncSnapshot<http.Response> snapshot) {
                            if (snapshot.hasData) {
                              var sadData = jsonDecode(snapshot.data!.body);
                              return ListView.builder(
                                  itemCount: sadData.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return pad(
                                        pfp: sadData[index]['pfp'],
                                        tits: sadData[index]["skill_name"]
                                            .toString(),
                                        sasd: sadData[index]["excercises_count"]
                                                .toString() +
                                            " Exersices");
                                  });
                            }
                            return Center(
                              child: Lottie.asset(
                                  'assets/animations/loading.json'),
                            );
                            // Center(child: CircularProgressIndicator());
                          },
                        ),
                      )
                    ],
                  )),
            ),
          ])),
    );
  }

  Widget pad({required pfp, required tits, required sasd}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(pfp),
                        radius: 30,
                      ),
                    ),
                    // child: Icon(
                    //   ico,
                    //   color: Colors.white,
                    // ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    Text(
                      tits,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    //subtitile
                    Text(
                      sasd,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }

  Future<http.Response> getDataFromWebServer() async {
    var response = await http.get(
        Uri.parse('https://63f74817e40e087c958b35ab.mockapi.io/excercises'));
    print(response.body.toString());
    return response;
  }
}
