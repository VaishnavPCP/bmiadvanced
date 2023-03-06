import 'package:bmiadvanced/utils.dart';
import 'package:flutter/material.dart';
import 'package:bmiadvanced/designpage.dart';

class Result extends StatelessWidget {
  Result(
      {required this.bmiresult, required this.resulttext, required this.inter});

  final String bmiresult;
  final String resulttext;

  final String inter;

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Design()));
            },
            icon: Icon(Icons.arrow_back),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Your Result", style: textStyle),
          Container(
            height: 400,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(resulttext, style: txt(40, Colors.white, FontWeight.bold)),
                Text(bmiresult, style: txt(70, Colors.white, FontWeight.bold)),
                Text(inter, style: txt(20, Colors.white, FontWeight.bold)),
              ],
            ),
          ),
          TextButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Design()));
              },
              child: Text(
                "Calculate Again",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              )),
        ],
      ),
    );
  }
}
