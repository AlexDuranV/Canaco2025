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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
// Importaciones necesarias
import 'dart:convert';
import 'package:http/http.dart' as http;

/// Acción personalizada
Future<List<dynamic>> fetchQuizQuestions() async {
  final url = Uri.parse(
      'https://https://oecsvbkpvhpnbcqflauk.supabase.co/rest/v1/Quiz_questions?select=*');

  final response = await http.get(
    url,
    headers: {
      'apikey':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9lY3N2YmtwdmhwbmJjcWZsYXVrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc4NTQwNDQsImV4cCI6MjA2MzQzMDA0NH0.InNmdBmb_8eHPbRpmkMt8-nJ3SBzDSOaUv8FBr5SfsQ',
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9lY3N2YmtwdmhwbmJjcWZsYXVrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc4NTQwNDQsImV4cCI6MjA2MzQzMDA0NH0.InNmdBmb_8eHPbRpmkMt8-nJ3SBzDSOaUv8FBr5SfsQ',
      'Content-Type': 'application/json',
    },
  );

  if (response.statusCode == 200) {
    final List<dynamic> allQuestions = json.decode(response.body);
    allQuestions.shuffle();
    return allQuestions.take(3).toList(); // Devuelve 3 preguntas aleatorias
  } else {
    throw Exception('Error al obtener preguntas: ${response.statusCode}');
  }
}
