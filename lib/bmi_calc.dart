import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({super.key});

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  bool isMale = true;

  double sliderValue = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi&Calc'),
        backgroundColor: const Color.fromARGB(255, 63, 75, 70),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color:
                                isMale ? Colors.blue[300] : Colors.grey[300]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: isMale ? Colors.grey[300] : Colors.blue[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${sliderValue.toInt()}",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "CM",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Slider(
                      value: sliderValue,
                      max: 200,
                      min: 0,
                      onChanged: (val) {
                        setState(() {
                          ;
                          sliderValue = val;
                        });
                      }),
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 63, 75, 70),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '69',
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.add,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.remove,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 63, 75, 70),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '58',
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.add,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.remove,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ]),
                  ),
                )
              ],
            ),
          )),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            width: 400,
            height: 60,
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "Calc",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
