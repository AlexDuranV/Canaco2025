import '../database.dart';

class QuizQuestionsTable extends SupabaseTable<QuizQuestionsRow> {
  @override
  String get tableName => 'Quiz_questions';

  @override
  QuizQuestionsRow createRow(Map<String, dynamic> data) =>
      QuizQuestionsRow(data);
}

class QuizQuestionsRow extends SupabaseDataRow {
  QuizQuestionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => QuizQuestionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get question => getField<String>('question');
  set question(String? value) => setField<String>('question', value);

  String? get option1 => getField<String>('option_1');
  set option1(String? value) => setField<String>('option_1', value);

  String? get option2 => getField<String>('option_2');
  set option2(String? value) => setField<String>('option_2', value);

  String? get option3 => getField<String>('option_3');
  set option3(String? value) => setField<String>('option_3', value);

  int? get correctOption => getField<int>('correct_option');
  set correctOption(int? value) => setField<int>('correct_option', value);

  String? get option4 => getField<String>('option_4');
  set option4(String? value) => setField<String>('option_4', value);
}
