import 'package:flutter/material.dart';
import 'package:mdmp/expenseapp/model/Transaction.dart';
import 'package:mdmp/expenseapp/widgets/Transaction_list.dart';

class UserTransaction extends StatefulWidget {
  final List<Transaction> transaction;
  final Function addTransaction;
  UserTransaction({Key key, this.transaction, this.addTransaction})
      : super(key: key);
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //NewTransaction(addTransaction: widget.addTransaction),
      widget.transaction.isEmpty
          ? Image.asset(
              "assets/images/imag.jpg",
            )
          : TransactionList(
              widget.transaction,
            ),
      //TransactionList(widget.transaction),
    ]);
  }
}
