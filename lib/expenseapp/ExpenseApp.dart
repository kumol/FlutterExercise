import 'package:flutter/material.dart';
import 'package:mdmp/expenseapp/widgets/User_transaction.dart';

class ExpenseApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [UserTransaction()],
    );
  }
}
