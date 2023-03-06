import 'package:flutter/material.dart';
import 'package:bmiadvanced/designpage.dart';
class Result extends StatelessWidget {
  Result({required this.bmiresult, required this.resulttext, required this.inter});

final String bmiresult;
final String resulttext;

final String inter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("BMI CALCULATOR"), centerTitle: true,
        backgroundColor: Colors.blueGrey,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Your Result", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white)),
          Container(
            height: 400,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(resulttext, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black)),
                Text(bmiresult, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                    color: Colors.white)),
                Text(inter, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),),
              ],
            ),
          ),
          TextButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Design()));
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

/*


class Result extends StatefulWidget {
  Result({required this.bmiresult, required this.resulttext, required this.inter});

  final String bmiresult;
  final String resulttext;
  final String inter;
  @override
  State<Result> createState() => _ResultState();
}
class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("BMI CALCULATOR"), centerTitle: true,
        backgroundColor: Colors.blueGrey,leading: Icon(Icons.arrow_back),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Your Result", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white)),
          Container(
            height: 400,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(r, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white)),
                Text("00000", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white)),
                Text("You Are Normal", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),),
              ],
            ),
          ),
          TextButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Design()));
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
*/
