import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Operation {
  add('Addition', Icon(Icons.add)),
  subtract('Subtraction', Icon(Icons.remove)),
  multiply('Multiplication', Icon(CupertinoIcons.multiply)),
  divide('Division', Icon(CupertinoIcons.divide));

  final String descriptionOperation;
  final Icon iconOperation;

  const Operation(this.descriptionOperation, this.iconOperation);
}
