import 'package:flutter/material.dart';

const kBackgroundColor = Color.fromARGB(255, 75, 57, 239);
const kPrimaryColor = Color(0xFFFFBD73);

const kCompanyTextStyle = TextStyle(
  fontFamily: 'poppins',
  fontWeight: FontWeight.w600,
  fontSize: 14.0,
  color: Colors.white,
);

const kVoteTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 25,
  fontWeight: FontWeight.normal,
);

const kMovieTitleTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 0, 0, 0),
);

const kGenereTextStyle = TextStyle(
  fontFamily: 'Poppins',
  color: Color.fromARGB(66, 87, 99, 108),
  fontWeight: FontWeight.w600,
);

const kGenereNameTextStyle = TextStyle(
    fontFamily: 'Poppins', fontWeight: FontWeight.w500, color: Colors.black);

const kViewsVotesTextStyle = TextStyle(
  fontFamily: 'poppins',
  fontSize: 14.0,
  color: Color.fromARGB(255, 75, 57, 239),
  fontWeight: FontWeight.w600,
);

const kButtonTextStyle = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 32.0,
  color: Colors.white,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  prefixIcon: Icon(
    Icons.place,
    color: Colors.grey,
  ),
  hintText: 'City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
