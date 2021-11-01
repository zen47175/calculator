import 'package:calculator/class.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Calculator());
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  dynamic displaytxt = 20;
  Widget calBtn(String btnTxt, Color btnColor, Color txtColor) {
    return SafeArea(
      child: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(fixedSize: Size(85, 50)),
          onPressed: () {
            calculation(btnTxt);
            setState(() {
              text = finalResult;
            });
          },
          child: Text(
            '$btnTxt',
            style: TextStyle(
              fontSize: 35,
              color: txtColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          centerTitle: false,
          title: Text(
            'เเคลคูเลเตอร์ ',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.orange.shade300),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '$text',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 100,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calBtn('AC', Colors.grey, Colors.black),
                calBtn('+/-', Colors.grey, Colors.black),
                calBtn('%', Colors.grey, Colors.black),
                calBtn('/', Colors.amber, Colors.white),
              ],
            ),
            space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calBtn('7', Colors.grey, Colors.white),
                calBtn('8', Colors.grey, Colors.white),
                calBtn('9', Colors.grey, Colors.white),
                calBtn('x', Colors.amber, Colors.white),
              ],
            ),
            space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calBtn('4', Colors.grey, Colors.white),
                calBtn('5', Colors.grey, Colors.white),
                calBtn('6', Colors.grey, Colors.white),
                calBtn('-', Colors.amber, Colors.white),
              ],
            ),
            space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calBtn('1', Colors.grey, Colors.white),
                calBtn('2', Colors.grey, Colors.white),
                calBtn('3', Colors.grey, Colors.white),
                calBtn('+', Colors.amber, Colors.white),
              ],
            ),
            space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(fixedSize: Size(120, 50)),
                      onPressed: () {
                        calculation('0');
                      },
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                calBtn('.', Colors.grey, Colors.white),
                calBtn('=', Colors.amber, Colors.white),
              ],
            ),
            space(),
          ],
        ),
      ),
    );
  }

  SizedBox space() {
    return SizedBox(
      height: 10,
    );
  }
}
