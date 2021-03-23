import 'package:flutter/material.dart';
import 'package:mdmp/expenseapp/model/Transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  TransactionList(this.transaction);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...transaction.map((tx) {
        return Card(
          elevation: 10,
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple[200],
                    width: 2,
                  ),
                ),
                child: Text(
                  '\$${tx.amount}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple[500],
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      tx.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      DateFormat('yyyy/MM/dd').format(tx.date),
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList()
    ]);
  }
}
