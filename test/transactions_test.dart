import 'dart:convert';

import 'package:elrond_api/elrond_api.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('send transaction', () {
    test('201', () async {
      final responseData = {
        'receiver': 'string',
        'receiverShard': 0,
        'sender': 'string',
        'senderShard': 0,
        'status': 'string',
        'txHash': 'string'
      };

      final mockClient = MockClient(
          (request) async => Response(json.encode(responseData), 201));
      final api = ElrondApi(
        baseUrl: mainnetApiBaseUrl,
        client: mockClient,
      );

      final request = SendTransactionRequest.fromJson({
        'chainId': 'string',
        'data': 'string',
        'gasLimit': 0,
        'gasPrice': 0,
        'nonce': 0,
        'receiver': 'string',
        'sender': 'string',
        'signature': 'string',
        'value': 'string',
        'version': 0
      });
      final result = await api.transactions.sendTransaction(request);
      expect(result, isA<SendTransactionResponse>());
      expect(result.receiver, equals('string'));
      expect(result.receiverShard, equals(0));
      expect(result.sender, equals('string'));
      expect(result.senderShard, equals(0));
      expect(result.status, equals('string'));
      expect(result.txHash, equals('string'));
    });

    test('400', () async {
      final responseData = {'statusCode': 400, 'message': 'Bad signature'};

      final mockClient = MockClient(
          (request) async => Response(json.encode(responseData), 400));
      final api = ElrondApi(
        baseUrl: mainnetApiBaseUrl,
        client: mockClient,
      );

      final request = SendTransactionRequest.fromJson({
        'chainId': 'string',
        'data': 'string',
        'gasLimit': 0,
        'gasPrice': 0,
        'nonce': 0,
        'receiver': 'string',
        'sender': 'string',
        'signature': 'string',
        'value': 'string',
        'version': 0
      });
      try {
        await api.transactions.sendTransaction(request);
      } on ApiException catch (e) {
        expect(e.statusCode, 400);
        expect(e.message, equals('Bad signature'));
      }
    });
  });
}
