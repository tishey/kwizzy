// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
                child: Padding(padding: EdgeInsets.all(15), child: Quizzy()))));
  }
}

class Quizzy extends StatefulWidget {
  const Quizzy({Key? key}) : super(key: key);

  @override
  State<Quizzy> createState() => _QuizzyState();
}

class _QuizzyState extends State<Quizzy> {
  List<Map> questionList = [
    {
      'question': 'The Big Apple is a nickname given to Washingyon D.C in 1971',
      'answerB': [true, false],
    },
    {
      'question': 'Muddy York is a nickname for New York in the winter',
      'answerB': [true, false],
    },
    {
      'question': 'Peanuts are not nut',
      'answerB': [true, false],
    },
    {
      'question': ' People may sneeze or cough sleeping deeply',
      'answerB': [true, false],
    },
    {
      'question': 'Copyrights depreciate over time',
      'answerB': [true, false],
    },
    {
      'question': 'Emus can\'t fly',
      'answerB': [true, false],
    },
    {
      'question': 'You can change ur personality type',
      'answerB': [true, false],
    },
    {
      'question': 'All introverts are shy and socially anxious',
      'answerB': [true, false],
    },
    {
      'question': 'An ISTP personality stands for interoverted, sensual, thoughtful and proactive',
      'answerB': [true, false],
    },
    {
      'question': 'The film Moneyball is based on a true story',
      'answerB': [true, false],
    },
    
    

  
  ];

  List<bool> answersList = [
    false,
    false,
    true,
    false,
    true,
    true,
    false,
    false,
    false,
    true,
  ];

  // set ans(List<bool> ans) {}

  // { String question = 'is sulaimon name also olakunle', bool; ans = [true, false]; }

  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(questionList[questionIndex]['question'],
              textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
          SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              bool correctAns = answersList[questionIndex];

              if (correctAns == true) {
                print('user got it right');
              } else {
                print('user got it wrong');
              }
              setState(() {
                questionIndex++;
              });
            },
            child: Container(
              padding: EdgeInsets.all(15),
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('True',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ),
          TextButton(
            onPressed: () {
              bool correctAns = answersList[questionIndex];

              if (correctAns == false) {
                print('user got it right');
              } else {
                print('user got it wrong');
              }
              setState(() {
                questionIndex++;
              });
            },
            child: Container(
              padding: EdgeInsets.all(15),
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('False',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
