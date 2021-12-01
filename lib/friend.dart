import 'package:flutter/material.dart';
import 'package:flutter_group9/login.dart';
import 'package:flutter_group9/searchfriends.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.lightGreen.shade100),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: const Text(
                      'Friends',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            child: const Text(
                              "Friend Requests",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 60.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.lightGreen.shade300),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/baam.jpg"),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              child: const Text(
                                                'Idham Anur',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                              children: [],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            child: const Text(
                              "My Friends",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          //friend 1
                          margin: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 60.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.lightGreen.shade300),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/azam.jpg"),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              child: const Text(
                                                'Khainor Azam',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.red),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                'Remove Friend',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          //friend 2
                          margin: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 60.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.lightGreen.shade300),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/menprofilepic.png"),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              child: const Text(
                                                'Ahmad Mujahid',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.red),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                'Remove Friend',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          //friend 3
                          margin: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 60.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.lightGreen.shade300),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/womenprofilepic.jpg"),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              child: const Text(
                                                'Nur Ain',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.red),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                'Remove Friend',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          //friend 4
                          margin: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 60.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.lightGreen.shade300),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/womenprofilepic.jpg"),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              child: const Text(
                                                'Yasmeen',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.red),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                'Remove Friend',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SearchFriends()));
        },
        child: const Icon(Icons.search),
        backgroundColor: Colors.green[700],
        tooltip: "Search Friends",
      ),
    );
  }
}
