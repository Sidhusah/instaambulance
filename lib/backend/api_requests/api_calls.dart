import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ImageapiCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? source,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'imageapi',
      apiUrl: 'https://freeimage.host/api/1/upload',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'source': source,
        'action': "upload",
        'key': "6d207e02198a847aa98d0a2a901485a5",
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDirectionsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetDirections',
      apiUrl:
          'https://maps.gomaps.pro/maps/api/directions/json?mode=DRIVING&destination=27.7121456892138,85.31600374848294&origin=27.034284126296612,84.90921196185882&key=AIzaSyBEYc0pF8doUaqqaksgFw1W20f-3Yyk8bw',
      callType: ApiCallType.GET,
      headers: {},
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

class MapboxapiCall {
  static Future<ApiCallResponse> call({
    String? driverLocation = '',
    String? userLocation = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'mapboxapi',
      apiUrl:
          'https://api.mapbox.com/directions/v5/mapbox/driving/${driverLocation};${userLocation}?alternatives=true&annotations=distance%2Cduration&geometries=polyline&overview=full&steps=false&access_token=pk.eyJ1Ijoic2lkZGhhbnRzYWgiLCJhIjoiY203YWo3eHBqMDUyMDJyczdmcXdoZGpiYSJ9.zvJRbExNDGyT3gSVC679qw',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic duration(dynamic response) => getJsonField(
        response,
        r'''$.routes[:].duration''',
      );
  static dynamic distance(dynamic response) => getJsonField(
        response,
        r'''$.routes[:].distance''',
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
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
