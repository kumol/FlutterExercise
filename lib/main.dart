import 'package:flutter/material.dart';
import 'package:mdmp/expenseapp/ExpenseApp.dart';
import 'package:mdmp/expenseapp/model/Transaction.dart';
import 'package:mdmp/expenseapp/widgets/New_transaction.dart';
import 'package:mdmp/expenseapp/widgets/User_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Expense App",
      home: ExpenseApp(),
      theme: ThemeData(
        textTheme: ThemeData.dark().textTheme.copyWith(
              title: TextStyle(
                fontSize: 20,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        primarySwatch: Colors.purple,
      ),
    );
  }
}

class ExpenseApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpenseAppState();
  }
}

class ExpenseAppState extends State<ExpenseApp> {
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

  //ExpenseApp
  final List<Transaction> transaction = [
    Transaction(
      title: "Pant ",
      amount: 2.2,
      id: "3",
      date: DateTime.now(),
    ),
    Transaction(
      title: "Shirt",
      amount: 32.3,
      id: "2",
      date: DateTime.now(),
    ),
  ];

  void startAddingNewTransaction(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bd) {
        return Container(
          height: 300,
          child: NewTransaction(
            addTransaction: addTransaction,
          ),
        );
      },
    );
  }

  void addTransaction(String title, double amount) {
    final newTx = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      transaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        actions: [
          Builder(
            builder: (context) => FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColorLight,
              child: Icon(Icons.add),
              onPressed: () {
                startAddingNewTransaction(context);
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Theme.of(context).primaryColor,
                child: Text("Chart"),
                margin: EdgeInsets.all(10),
                elevation: 5,
              ),
            ),
            UserTransaction(
              transaction: transaction,
              addTransaction: addTransaction,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            startAddingNewTransaction(context);
          },
        ),
      ),
      // body: questionIndex < questions.length
      //     ? Quiz(
      //         answerCounter: answerQuestion,
      //         questions: questions,
      //         questionIndex: questionIndex)
      //     : Result(result, resetQuiz),
    );
  }
}
