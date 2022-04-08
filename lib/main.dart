// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Calculator',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: new CalculatorPage(),
//     );
//   }
// }

// // ui_page
// class CalculatorPage extends StatefulWidget {
//   const CalculatorPage({Key? key}) : super(key: key);

//   @override
//   State<CalculatorPage> createState() => _CalculatorPageState();
// }

// class _CalculatorPageState extends State<CalculatorPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.black,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Flexible(
//                 flex: 3,
//                 child: Container(
//                   color: Colors.black54,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.amber,
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                             color: Colors.blue,
//                             child: Align(
//                               alignment: Alignment.centerRight,
//                               child: ResultWidget(),
//                             )),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.green,
//                         ),
//                       ),
//                     ],
//                   ),
//                 )),
//             Flexible(
//                 flex: 5,
//                 child: Container(
//                   color: Colors.white,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Flexible(
//                                   child: GestureDetector(
//                                       onTap: () {
//                                         print("C");
//                                         ResultWidget("c");
//                                       },
//                                       child: CustomButton("C"))),
//                               Flexible(
//                                   child: GestureDetector(
//                                       onTap: () {
//                                         print("+/-");
//                                       },
//                                       child: CustomButton("+/-"))),
//                               Flexible(
//                                   child: GestureDetector(
//                                       onTap: () {
//                                         print("%");
//                                       },
//                                       child: CustomButton("%"))),
//                               Flexible(
//                                   child: GestureDetector(
//                                       onTap: () {
//                                         print("-");
//                                       },
//                                       child: CustomButton("-"))),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Flexible(child: CustomButton("9")),
//                               Flexible(child: CustomButton("8")),
//                               Flexible(child: CustomButton("7")),
//                               Flexible(child: CustomButton("x")),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Flexible(child: CustomButton("6")),
//                               Flexible(child: CustomButton("5")),
//                               Flexible(child: CustomButton("4")),
//                               Flexible(child: CustomButton("-")),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Flexible(child: CustomButton("3")),
//                               Flexible(child: CustomButton("2")),
//                               Flexible(child: CustomButton("1")),
//                               Flexible(child: CustomButton("=")),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Flexible(child: CustomButton("*")),
//                               Flexible(child: CustomButton("/")),
//                               Flexible(child: CustomButton("C")),
//                               Flexible(child: CustomButton('00')),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )),
//           ],
//         ));
//   }
// }

// // button widget

// class CustomButton extends StatelessWidget {
//   String text;

//   CustomButton(this.text);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(6.0),
//       height: double.infinity,
//       width: double.infinity,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(16.0)),
//           color: Colors.white24),
//       child: Text(
//         text,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 26.0,
//           decoration: TextDecoration.none,
//         ),
//       ),
//     );
//   }
// }

// class ResultWidget extends StatefulWidget {
//   String data;
//   ResultWidget(this.data);

//   @override
//   State<ResultWidget> createState() => _ResultWidgetState();
// }

import 'package:flutter/material.dart';
import 'buttons.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ); // MaterialApp
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = '';
  var answer = '';

// Array of button
  final List<String> buttons = [
    'C',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ), //AppBar
      backgroundColor: Colors.white38,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userInput,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    // Clear Button
                    if (index == 0) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }

                    // +/- button
                    else if (index == 1) {
                      return MyButton(
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }
                    // % Button
                    else if (index == 2) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }
                    // Delete Button
                    else if (index == 3) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }
                    // Equal_to Button
                    else if (index == 18) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.orange[700],
                        textColor: Colors.white,
                      );
                    }

                    // other buttons
                    else {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: isOperator(buttons[index])
                            ? Colors.blueAccent
                            : Colors.white,
                        textColor: isOperator(buttons[index])
                            ? Colors.white
                            : Colors.black,
                      );
                    }
                  }), // GridView.builder
            ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
