import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String name;
  final double age;
  final DateTime date;
  Transaction(
      {@required this.id,
      @required this.name,
      @required this.age,
      @required this.date});
}
