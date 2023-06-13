import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(id: 'ti', name: 'naruto', age: 17, date: DateTime.now()),
    Transaction(id: 't2', name: "mighty guy", age: 45, date: DateTime.now()),
    Transaction(id: 'ti', name: 'sasuke', age: 16, date: DateTime.now()),
    Transaction(id: 't2', name: "sakura", age: 16, date: DateTime.now()),
    Transaction(id: 'ti', name: 'kakashi', age: 30, date: DateTime.now()),
    Transaction(id: 't2', name: "ino", age: 17, date: DateTime.now()),
    Transaction(id: 'ti', name: 'choji', age: 17, date: DateTime.now()),
    Transaction(id: 't2', name: "minato", age: 34, date: DateTime.now()),
    Transaction(id: 'ti', name: 'madara', age: 45, date: DateTime.now()),
    Transaction(id: 't2', name: "hashirama", age: 45, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        name: txTitle,
        age: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
