import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_group9/profile/page/edit_description.dart';
import 'package:flutter_group9/profile/page/edit_email.dart';
import 'package:flutter_group9/profile/page/edit_location.dart';
import 'package:flutter_group9/profile/page/edit_name.dart';
import 'package:flutter_group9/profile/page/edit_phone.dart';
import 'package:flutter_group9/setting.dart';
import 'package:flutter_group9/login.dart';
import 'package:flutter_group9/timeline.dart';

import '../../maininterface.dart';

class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      home: EditProfile(),
    );
  }
}

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

CollectionReference users = FirebaseFirestore.instance.collection('users');
String? documentId;

class _EditProfileState extends State<EditProfile> {
  String userID = "";
  String name = "";
  String email = "";
  String phone = "";
  String location = "";
  String about = "";
  String status = "";
  bool _isSigningOut = false;
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    //to get current user ID
    getCurrentUser();
    userID = documentId!;

    var firebaseUser = FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance
        .collection("users")
        .doc(userID)
        .get()
        .then((value) {
      email = value.data()!["email"];
      name = value.data()!["username"];
      location = value.data()!["location"];
      phone = value.data()!["phone"];
      status = value.data()!["status"];
      about = value.data()!["about"];
    });

    return Scaffold(
      backgroundColor: Colors.lightGreen.shade100,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: <Widget>[
              //   Padding(
              //     padding: const EdgeInsets.only(left: 310),
              //     child: MaterialButton(
              //       onPressed: () async {
              //         setState(() {
              //           _isSigningOut = true;
              //         });
              //         await FirebaseAuth.instance.signOut();
              //         setState(() {
              //           _isSigningOut = false;
              //         });
              //         Navigator.of(context).pushReplacement(
              //           MaterialPageRoute(
              //             builder: (context) => Login(),
              //           ),
              //         );
              //         // Navigator.push(context,
              //         //     MaterialPageRoute(builder: (context) => Login()));
              //       },
              //       child: Icon(Icons.logout_outlined,
              //           size: 35, color: Colors.black87),
              //     ),
              //   ),
              Padding(
                padding: const EdgeInsets.only(left: 310),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SettingsPage()));
                  },
                  child: Icon(
                    Icons.settings,
                    color: Colors.green,
                  ),
                ),
              ),
              Text(
                "My Profile ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",
                              ))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1.5,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.green,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.edit),
                            color: Colors.white,
                            onPressed: () {},
                            //size: 10,
                            //align:
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              buildUserInfoDisplay(name, 'Name', EditNameFormPage()),
              buildUserInfoDisplay2(email, 'Email'),
              buildUserInfoDisplay(phone, 'Phone', EditPhoneFormPage()),
              buildUserInfoDisplay(
                  location, 'Location', EditLocationFormPage()),
              buildUserInfoDisplay(
                  about, 'About Me', EditDescriptionFormPage()),

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainInterface.select(0),
                          ));
                    },
                    //color: Colors.white,
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainInterface.select(4),
                          ));
                    },
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
    userID = "Null";
  }

  Widget buildUserInfoDisplay(String getValue, String title, Widget editPage) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ))),
                child: Row(children: [
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            navigateSecondPage(editPage);
                          },
                          child: Text(
                            getValue,
                            style: TextStyle(
                                fontSize: 16, height: 1.4, color: Colors.green),
                          ))),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                    size: 40.0,
                  )
                ]))
          ],
        ));
  }

  Widget buildUserInfoDisplay2(String getValue, String title) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ))),
                child: Row(children: [
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            // navigateSecondPage(editPage);
                          },
                          child: Text(
                            getValue,
                            style: TextStyle(
                                fontSize: 16, height: 1.4, color: Colors.green),
                          ))),
                ]))
          ],
        ));
  }

  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }

  void navigateSecondPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}

void getCurrentUser() async {
  final User? user = FirebaseAuth.instance.currentUser;
  final uid = user!.uid;
  documentId = uid;
}
