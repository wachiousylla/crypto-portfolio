import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
get_score_color(double score) {
  if (score < 0.4) {
    return Colors.red;
  }
  if (score >= 0.4 && score < 0.7) {
    return Colors.yellow;
  }
  if (score >= 0.7) {
    return Colors.green;
  }
}
