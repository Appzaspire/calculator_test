import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: new CalculatorPage(),
    );
  }
}

// ui_page
class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  var _disData = "0";
  int _fstData = 0;
  int _secData = 0;
  int _tempData = 0;
  int _calData = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
                flex: 3,
                child: Container(
                  color: Colors.black54,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.amber,
                          child: Text(_disData.toString()),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                            color: Colors.blue,
                            child: Align(
                              alignment: Alignment.centerRight,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                )),
            Flexible(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                  child: GestureDetector(
                                      onTap: () {
                                        var valData = "C";
                                        print(valData);
                                        setState(() {
                                          _disData = "0";
                                          print(_disData);
                                        });
                                      },
                                      child: CustomButton("C"))),
                              Flexible(
                                  child: GestureDetector(
                                      onTap: () {
                                        var valData = "-";
                                        print(valData);

                                        setState(() {
                                          if (_disData == "0") {
                                            _disData = "";
                                            _disData = valData + _disData;
                                            print(_disData);
                                          } else {
                                            _disData = _disData + valData;
                                            print(_disData);
                                          }
                                        });
                                      },
                                      child: CustomButton("+/-"))),
                              Flexible(
                                  child: GestureDetector(
                                      onTap: () {
                                        var valData = "%";
                                        print(valData);

                                        setState(() {
                                          if (_disData == "0") {
                                            _disData = "";
                                            _disData = _disData + valData;
                                            print(_disData);
                                          } else {
                                            _disData = _disData + valData;
                                            print(_disData);
                                          }
                                        });
                                      },
                                      child: CustomButton("%"))),
                              Flexible(
                                  child: GestureDetector(
                                      onTap: () {
                                        print("-");
                                      },
                                      child: CustomButton("-"))),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                  child: GestureDetector(
                                      onTap: () {}, child: CustomButton("9"))),
                              Flexible(
                                  child: GestureDetector(
                                      onTap: () {
                                        var valData = "8";

                                        setState(() {
                                          dataGen(_disData, _calData);
                                        });
                                      },
                                      child: CustomButton("8"))),
                              Flexible(
                                  child: GestureDetector(
                                      onTap: () {
                                        var valData = "7";

                                        setState(() {
                                          if (_disData == "0" &&
                                              _fstData == 0 &&
                                              _calData == 0) {
                                            _disData = "";
                                            _disData = _disData + valData;
                                            _calData = int.parse(_disData);
                                          } else if (_fstData != 0) {
                                            _disData = _disData + valData;
                                            _secData = int.parse(_disData);
                                          } else {
                                            // _disData = _disData + valData;

                                            print(_disData);
                                          }
                                        });
                                      },
                                      child: CustomButton("7"))),
                              Flexible(
                                  child: GestureDetector(
                                      onTap: () {
                                        var valData = "x";
                                        print(valData);

                                        setState(() {
                                          if (_disData != 0) {
                                            _fstData = int.parse(_disData);
                                            _disData = _disData + valData;
                                            _calData = 0;
                                          }

                                          print(_fstData);
                                          print(_disData);

                                          // _tempData = _disData + valData;
                                        });
                                      },
                                      child: CustomButton("x"))),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(child: CustomButton("6")),
                              Flexible(child: CustomButton("5")),
                              Flexible(child: CustomButton("4")),
                              Flexible(child: CustomButton("-")),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(child: CustomButton("3")),
                              Flexible(child: CustomButton("2")),
                              Flexible(child: CustomButton("1")),
                              Flexible(
                                  child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          print("second");
                                          print(_secData);
                                          _tempData = _fstData + _secData;
                                          _disData = _tempData.toString();
                                        });
                                      },
                                      child: CustomButton("="))),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(child: CustomButton("*")),
                              Flexible(child: CustomButton("/")),
                              Flexible(child: CustomButton("C")),
                              Flexible(child: CustomButton('00')),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}

// button widget

class CustomButton extends StatelessWidget {
  var text;

  CustomButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: Colors.white24),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 26.0,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}

int dataGen(var _disData, int valData) {
  if (_disData == "0") {
    _disData = "";
    _disData = _disData + valData;
    print(_disData);
  } else if (_disData == "") {
    _disData = _disData + valData;
  } else {
    _disData = _disData + valData;
    print(_disData);
  }
  int a = 0;
  return a;
}
