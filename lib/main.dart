import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper  = [Icon(Icons.check,
    color: Colors.white,
  ),
    Icon(Icons.check,
      color: Colors.white,
    ),
    Icon(Icons.check,
      color: Colors.white,
    ),
    Icon(Icons.check,
      color: Colors.white,
    ),
    Icon(Icons.check,
      color: Colors.white,
    ),
    Icon(Icons.close,
      color: Colors.red,
    )];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'This is where the question text will go.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {
                setState(() {
                  scoreKeeper.add(Icon(Icons.check,color: Colors.green,));
                });
                // The user pressed the button.
              },
              child: const Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                  // color: Colors.white
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              onPressed: () {
              setState(() {
                scoreKeeper.add(Icon(Icons.close,color: Colors.red,));
              });

                // The user pressed the button.
              },
              child: const Text(
                'False ',
                style: TextStyle(
                  fontSize: 20.0,
                  // color: Colors.red
                ),
              ),
            ),
          ),
        ),
      //  Score keeper
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
