import 'dart:convert';

import 'package:app_crypto_coin/model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

List<Model> parseModel(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  List<Model> models = list.map((model) => Model.fromJson(model)).toList();
  return models;
}

Future<List<Model>> getApi() async {
  final response = await http
      .get(Uri.parse('https://api.coingecko.com/api/v3/coins/categories/list'));
  if (response.statusCode == 200) {
    return compute(parseModel, response.body);
  } else {
    throw Exception('Failed to load model');
  }
}
