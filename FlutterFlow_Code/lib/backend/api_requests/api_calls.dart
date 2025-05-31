import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Supabase Usuarios Group Code

class SupabaseUsuariosGroup {
  static String getBaseUrl() =>
      'https://oecsvbkpvhpnbcqflauk.supabase.co/auth/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9lY3N2YmtwdmhwbmJjcWZsYXVrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc4NTQwNDQsImV4cCI6MjA2MzQzMDA0NH0.InNmdBmb_8eHPbRpmkMt8-nJ3SBzDSOaUv8FBr5SfsQ',
  };
  static RegistroDeUsuarioCall registroDeUsuarioCall = RegistroDeUsuarioCall();
}

class RegistroDeUsuarioCall {
  Future<ApiCallResponse> call({
    String? nombres = '',
    String? apellidos = '',
    String? phone = '',
  }) async {
    final baseUrl = SupabaseUsuariosGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "phone": "${escapeStringForJson(phone)}",
  "password": "${escapeStringForJson(nombres)} ${escapeStringForJson(apellidos)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registro de Usuario',
      apiUrl: '${baseUrl}/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9lY3N2YmtwdmhwbmJjcWZsYXVrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc4NTQwNDQsImV4cCI6MjA2MzQzMDA0NH0.InNmdBmb_8eHPbRpmkMt8-nJ3SBzDSOaUv8FBr5SfsQ',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.identities[:].identity_id''',
      ));
}

/// End Supabase Usuarios Group Code

class GetRandomQuestionsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRandomQuestions',
      apiUrl:
          'https://oecsvbkpvhpnbcqflauk.supabase.co/rest/v1/questions?select=*&limit=3',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9lY3N2YmtwdmhwbmJjcWZsYXVrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc4NTQwNDQsImV4cCI6MjA2MzQzMDA0NH0.InNmdBmb_8eHPbRpmkMt8-nJ3SBzDSOaUv8FBr5SfsQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9lY3N2YmtwdmhwbmJjcWZsYXVrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc4NTQwNDQsImV4cCI6MjA2MzQzMDA0NH0.InNmdBmb_8eHPbRpmkMt8-nJ3SBzDSOaUv8FBr5SfsQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
