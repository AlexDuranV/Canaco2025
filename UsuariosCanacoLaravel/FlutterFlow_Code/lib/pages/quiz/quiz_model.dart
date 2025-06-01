import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'quiz_widget.dart' show QuizWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuizModel extends FlutterFlowModel<QuizWidget> {
  ///  Local state fields for this page.

  int currentQuestionIndex = 1;

  bool? isAnswered = false;

  int? selectedOption;

  int? score = 0;

  bool isQuizOver = false;

  List<QuizQuestionsRow> selectedQuestions = [];
  void addToSelectedQuestions(QuizQuestionsRow item) =>
      selectedQuestions.add(item);
  void removeFromSelectedQuestions(QuizQuestionsRow item) =>
      selectedQuestions.remove(item);
  void removeAtIndexFromSelectedQuestions(int index) =>
      selectedQuestions.removeAt(index);
  void insertAtIndexInSelectedQuestions(int index, QuizQuestionsRow item) =>
      selectedQuestions.insert(index, item);
  void updateSelectedQuestionsAtIndex(
          int index, Function(QuizQuestionsRow) updateFn) =>
      selectedQuestions[index] = updateFn(selectedQuestions[index]);

  int? currentIndex = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in quiz widget.
  List<QuizQuestionsRow>? tempQuestions;
  // Stores action output result for [Custom Action - getRandomQuestion] action in quiz widget.
  List<QuizQuestionsRow>? selectedQuestion;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
