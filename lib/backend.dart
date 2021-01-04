import 'package:flutter/material.dart';


showResult(String response, int index, context,questions) {
  String answer = questions[index].answer;
  if (answer == response) {
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 400),
      content: Text(
        'Correct Answer :)',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      backgroundColor: Colors.lightGreen,
    );
    Scaffold.of(context).showSnackBar(snackBar);
  } else {
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 400),
      content: Text(
        'Wrong Answer :(',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      backgroundColor: Colors.red,
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
