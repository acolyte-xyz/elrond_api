library elrond_api;

import 'dart:convert';

import 'package:elrond_api/src/contants.dart';
import 'package:elrond_api/src/repositories/dapp.dart';
import 'package:elrond_api/src/repositories/response/response.dart';
import 'package:http/http.dart';

export 'package:elrond_api/src/contants.dart';
export 'package:elrond_api/src/repositories/response/response.dart';
export 'package:elrond_api/src/repositories/response/dapp/get_config/get_config.dart';

class ElrondApi {
  final Client client;
  final String baseUrl;

  final Dapp dapp;

  ElrondApi({
    required this.client,
    this.baseUrl = mainnetApiBaseUrl,
  }) : dapp = Dapp(baseUrl, client);

  Future<String> hello() async {
    final response = await client.get(Uri.parse('$baseUrl/hello'));
    if (response.statusCode != 200) {
      throw ApiException.fromJson(json.decode(response.body));
    }
    return response.body;
  }
}
