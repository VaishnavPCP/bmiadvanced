import 'package:bmiadvanced/result.dart';
import 'package:flutter/material.dart';
import 'package:bmiadvanced/calculations.dart';

enum Gender {
  male,
  female;
}

class Design extends StatefulWidget {
  const Design({Key? key}) : super(key: key);

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  Gender? selcectedgender;
  int hight = 180;
  int wight = 50;
  int agee = 20;
  Color kactivecolor = Colors.black26;
  Color kinactivecolor = Colors.black12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selcectedgender = Gender.male;
                        print(selcectedgender);
                      });
                    },
                    child: ReusableCard(
                      clr: selcectedgender == Gender.male
                          ? kactivecolor
                          : kinactivecolor,
                      ico: Icons.male,
                      text: "Male",
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selcectedgender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    clr: selcectedgender == Gender.female
                        ? kactivecolor
                        : kinactivecolor,
                    ico: Icons.male,
                    text: "Female",
                  ),
                )),
              ],
            )),
            Expanded(
              child: Container(
                height: 200,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          hight.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("CM",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Colors.white)),
                      ],
                    ),
                    Slider(
                      value: hight.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          hight = newValue.round();
                        });
                      },
                      activeColor: Colors.pink,
                      inactiveColor: Colors.grey,
                      min: 100,
                      max: 200,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Text(
                          wight.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  wight--;
                                });
                              },
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  wight++;
                                });
                              },
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Text(
                          agee.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  agee--;
                                });
                              },
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  agee++;
                                });
                              },
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Container(
              height: 50,
              width: double.maxFinite,
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.pink),
                  onPressed: () {
                    Calculate calc = Calculate(height: hight, weight: wight);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Result(
                                  bmiresult: calc.calculation(),
                                  resulttext: calc.results(),
                                  inter: calc.lst(),
                                )));
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color clr;
  final IconData ico;
  final String text;

  ReusableCard({required this.clr, required this.ico, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: clr),
      child: Column(
        // selcectedgender==Gender.male?kactivecolor:kinactivecolor;
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            ico,
            size: 80,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
