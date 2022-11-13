import 'dart:convert';

import 'package:elrond_api/src/repositories/request/transactions/send_transaction.dart';
import 'package:elrond_api/src/repositories/response/response.dart';
import 'package:elrond_api/src/repositories/response/transactions/send_transaction/send_transaction.dart';
import 'package:http/http.dart';

class Transactions {
  final String _baseUrl;
  final Client _client;

  const Transactions(this._baseUrl, this._client);

  /// Posts a signed transaction on the blockchain
  Future<SendTransactionResponse> sendTransaction(
    SendTransactionRequest request,
  ) async {
    final response = await _client.post(
      Uri.parse('$_baseUrl/transactions'),
      body: json.encode(request.toJson()),
      headers: {'content-type': 'application/json'},
    );
    if (response.statusCode != 201) {
      throw ApiException.fromJson(json.decode(response.body));
    }
    return SendTransactionResponse.fromJson(json.decode(response.body));
  }
}
