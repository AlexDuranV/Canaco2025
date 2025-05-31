// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

List<QuizQuestionsRow> getRandomQuestion(
    List<QuizQuestionsRow> allQuestions, int count) {
  final random = Random();
  final selected = <QuizQuestionsRow>[];
  final usedIndexes = <int>{};

  if (allQuestions.length <= count) {
    return List.from(
        allQuestions); // si hay menos o igual a count, regresa todos
  }

  while (selected.length < count) {
    final index = random.nextInt(allQuestions.length);
    if (!usedIndexes.contains(index)) {
      usedIndexes.add(index);
      selected.add(allQuestions[index]);
    }
  }

  return selected;
}
