// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double tip = 0;
  TextEditingController bill = TextEditingController();
  TextEditingController percentage = TextEditingController();
  TextEditingController persons = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 45, 138, 48),
        title: Text('Tip calculator'),
        elevation: 0,
        titleTextStyle: TextStyle(
          letterSpacing: 2.0,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
                width: 100.0,
                child: TextField(
                  controller: bill,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    label: Text('Bill'),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,  
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,  
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                  )
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40.0,
                    width: 60.0,
                    child: TextField(
                      controller: percentage,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        label: Text('%'),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,  
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,  
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                    width: 80.0,
                    child: TextField(
                      controller: persons,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        label: Text('No. of persons'),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontSize: 13.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,  
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,  
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: StadiumBorder(),
                ),
                onPressed: () {
                  setState(() {
                  var tipTotal = (int.parse(percentage.text) / 100) * (int.parse(bill.text));
                  var tipForEach = tipTotal / (int.parse(persons.text));
                  tip = tipForEach;
                  });
                },
                child: Text('calculate your tip', style: TextStyle(letterSpacing: 1.0))
              ),
              SizedBox(height: 50.0),
              Text(
                'Your tip is: $tip',
                style: TextStyle(
                  letterSpacing: 1.0,
                )
                )
            ],
          ),
        ),
      )
    );
  }
}

