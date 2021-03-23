import 'package:flutter/material.dart';
import 'package:mdmp/expenseapp/widgets/User_transaction.dart';

class ExpenseApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          child: Card(
            color: Colors.blue[200],
            child: Text("Chart"),
            margin: EdgeInsets.all(10),
            elevation: 5,
          ),
        ),
        UserTransaction()
      ],
    );
  }
}
