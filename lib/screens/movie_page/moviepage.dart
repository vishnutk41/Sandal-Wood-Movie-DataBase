// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '/utilities/constants.dart';

import '../companydetails/company.dart';
import 'moviepage_body.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 10, 0),
            child: GestureDetector(
              onTap: () async {
                // questionModel = await getQuestions();
                // displayData();
                // print(questionModel!.results![2].category);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CompanyDetails()));
              },
              child: Text(
                'Company Details',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            width: 135,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 10, 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () async {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Text(
                    'SignOut',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Icon(Icons.logout),
              ],
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 241, 244, 248),
      body: MoviePageBody(),
    );
  }
}
