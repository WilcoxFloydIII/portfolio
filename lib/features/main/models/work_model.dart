import 'package:flutter/material.dart';

class WorkModel {
  late final String startYear;
  late final String? endYear;
  late final DateTimeRange timeRange;
  late final String company;
  late final String work;
  late final List<String> languages;

  WorkModel({
    required this.startYear,
    this.endYear,
    required this.timeRange,
    required this.company,
    required this.work,
    required this.languages
  });
}
