import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';

List<QuizQuestionsRow> getRandomQuestions(
  List<QuizQuestionsRow> allQuestions,
  int count,
) {
  final random = math.Random();
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
