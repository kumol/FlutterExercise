import 'package:flutter/material.dart';
import 'package:mdmp/expenseapp/ExpenseApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int result = 0;
  void answerQuestion(int count) {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    setState(() {
      result = result + count;
    });
    print(result);
  }

  void resetQuiz() {
    setState(() {
      result = 0;
      questionIndex = 0;
    });
  }

  var questions = [
    {
      "questionText": "What is your favourite Person?",
      "answers": [
        {"text": "Nazrul", "score": 5},
        {"text": "Rabindra", "score": 5},
        {"text": "Salman", "score": 5},
        {"text": "Amir", "score": 5}
      ]
    },
    {
      "questionText": "What is your favourite Book?",
      "answers": [
        {"text": "Poem", "score": 5},
        {"text": "Drama", "score": 8},
        {"text": "Novel", "score": 6},
        {"text": "Story", "score": 10}
      ]
    },
    {
      "questionText": "What is your favourite Color?",
      "answers": [
        {"text": "Red", "score": 7},
        {"text": "Green", "score": 8},
        {"text": "Black", "score": 2},
        {"text": "White", "score": 10}
      ]
    },
    {
      "questionText": "What is your favourite hobby?",
      "answers": [
        {"text": "Reading", "score": 5},
        {"text": "Cycling", "score": 8},
        {"text": "Swiming", "score": 10},
        {"text": "Facebooking", "score": 4}
      ]
    },
    {
      "questionText": "What is your favourite Journey?",
      "answers": [
        {"text": "Boat", "score": 5},
        {"text": "Bus", "score": 8},
        {"text": "Air", "score": 6},
        {"text": "Train", "score": 10}
      ]
    },
    {
      "questionText": "What is your favourite Place to visit?",
      "answers": [
        {"text": "Hamham", "score": 4},
        {"text": "Ratargul", "score": 8},
        {"text": "Lalakhal", "score": 4},
        {"text": "Cox's Bazar", "score": 10}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          actions: [
            FloatingActionButton(
              onPressed: () => {},
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue[100],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: ExpenseApp(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.add),
        ),
        // body: questionIndex < questions.length
        //     ? Quiz(
        //         answerCounter: answerQuestion,
        //         questions: questions,
        //         questionIndex: questionIndex)
        //     : Result(result, resetQuiz),
      ),
    );
  }
}
