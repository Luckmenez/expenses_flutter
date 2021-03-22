import 'dart:math';

import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo tênis de corrida',
      value: 300.21,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Sapato social',
      value: 250.11,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Sapato s',
      value: 250.11,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Sapato soc',
      value: 250.11,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Sapato soci',
      value: 250.11,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Sapato socia',
      value: 250.11,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Sapato socia',
      value: 250.11,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Sapato socia',
      value: 250.11,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String title, double value) {
    final newTrasaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTrasaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
