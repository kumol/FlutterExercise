import 'package:flutter/material.dart';
import 'package:mdmp/expenseapp/model/Transaction.dart';
import 'package:mdmp/expenseapp/widgets/New_transaction.dart';
import 'package:mdmp/expenseapp/widgets/Transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
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
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTransaction(),
      TransactionList(transaction),
    ]);
  }
}
