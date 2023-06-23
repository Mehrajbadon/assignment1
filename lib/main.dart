import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String displayValue = '0';
  String operand = '';
  int firstNumber = 0;
  int secondNumber = 0;

  void handleButtonTap(String value) {
    setState(() {
      if (value == 'C') {
        // Clear the calculator
        displayValue = '0';
        operand = '';
        firstNumber = 0;
        secondNumber = 0;
      } else if (value == '+' || value == '-' || value == '*' || value == '/') {
        // Store the operand and update the display
        operand = value;
        firstNumber = int.parse(displayValue);
        displayValue = '0';
      } else if (value == '=') {
        // Perform the calculation based on the stored operand
        secondNumber = int.parse(displayValue);
        if (operand == '+') {
          displayValue = (firstNumber + secondNumber).toString();
        } else if (operand == '-') {
          displayValue = (firstNumber - secondNumber).toString();
        } else if (operand == '*') {
          displayValue = (firstNumber * secondNumber).toString();
        } else if (operand == '/') {
          displayValue = (firstNumber / secondNumber).toString();
        }
        operand = '';
        firstNumber = 0;
        secondNumber = 0;
      } else {
        // Append the digit to the display
        if (displayValue == '0') {
          displayValue = value;
        } else {
          displayValue += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 25, 12, 0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            child: Text(
                              displayValue,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => handleButtonTap("C"),
                        child: Container(
                          child: const Text(
                            "C",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => handleButtonTap("("),
                        child: Container(
                          child: const Text(
                            "( )",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => handleButtonTap("%"),
                        child: Container(
                          child: const Text(
                            "%",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: GestureDetector(
                          onTap: () => handleButtonTap("/"),
                          child: Container(
                            child: const Text(
                              "/",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => handleButtonTap("7"),
                        child: Container(
                          child: const Text(
                            "7",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => handleButtonTap("8"),
                        child: Container(
                          child: const Text(
                            "8",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => handleButtonTap("9"),
                        child: Container(
                          child: const Text(
                            "9",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: GestureDetector(
                          onTap: () => handleButtonTap("*"),
                          child: Container(
                            child: const Text(
                              "*",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => handleButtonTap("4"),
                        child: Container(
                          child: const Text(
                            "4",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => handleButtonTap("5"),
                        child: Container(
                          child: const Text(
                            "5",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => handleButtonTap("6"),
                        child: Container(
                          child: const Text(
                            "6",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: GestureDetector(
                          onTap: () => handleButtonTap("-"),
                          child: Container(
                            child: const Text(
                              "-",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => handleButtonTap("1"),
                        child: Container(
                          child: const Text(
                            "1",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => handleButtonTap("2"),
                        child: Container(
                          child: const Text(
                            "2",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => handleButtonTap("3"),
                        child: Container(
                          child: const Text(
                            "3",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: GestureDetector(
                          onTap: () => handleButtonTap("+"),
                          child: Container(
                            child: const Text(
                              "+",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 35),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => handleButtonTap("0"),
                          child: Container(
                            child: const Text(
                              "0",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => handleButtonTap("."),
                          child: Container(
                            child: const Text(
                              ".",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: GestureDetector(
                            onTap: () => handleButtonTap("="),
                            child: Container(
                              child: const Text(
                                "=",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
