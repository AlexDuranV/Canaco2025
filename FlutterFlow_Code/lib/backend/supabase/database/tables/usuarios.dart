import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'Usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nombres => getField<String>('Nombre(s)')!;
  set nombres(String value) => setField<String>('Nombre(s)', value);

  String get apellidos => getField<String>('Apellidos')!;
  set apellidos(String value) => setField<String>('Apellidos', value);

  String get email => getField<String>('Email')!;
  set email(String value) => setField<String>('Email', value);

  String get address => getField<String>('Address')!;
  set address(String value) => setField<String>('Address', value);

  String get place => getField<String>('Place')!;
  set place(String value) => setField<String>('Place', value);

  double get amount => getField<double>('Amount')!;
  set amount(double value) => setField<double>('Amount', value);

  String get date => getField<String>('Date')!;
  set date(String value) => setField<String>('Date', value);

  String get phone => getField<String>('Phone')!;
  set phone(String value) => setField<String>('Phone', value);

  String get ticket => getField<String>('Ticket')!;
  set ticket(String value) => setField<String>('Ticket', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);
}
