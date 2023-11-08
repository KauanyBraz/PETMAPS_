import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ApibuscarcepCall {
  static Future<ApiCallResponse> call({
    String? varcep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'apibuscarcep',
      apiUrl: 'https://viacep.com.br/ws/${varcep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic tudo(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
  static dynamic cep(dynamic response) => getJsonField(
        response,
        r'''$.cep''',
        true,
      );
  static dynamic logradouro(dynamic response) => getJsonField(
        response,
        r'''$.logradouro''',
        true,
      );
  static dynamic bairro(dynamic response) => getJsonField(
        response,
        r'''$.bairro''',
        true,
      );
  static dynamic cidade(dynamic response) => getJsonField(
        response,
        r'''$.localidade''',
        true,
      );
  static dynamic estado(dynamic response) => getJsonField(
        response,
        r'''$.uf''',
        true,
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
