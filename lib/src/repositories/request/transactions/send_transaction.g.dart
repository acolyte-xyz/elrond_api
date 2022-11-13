// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendTransactionRequest _$SendTransactionRequestFromJson(
        Map<String, dynamic> json) =>
    SendTransactionRequest(
      json['chainId'] as String,
      json['data'] as String,
      json['gasLimit'] as int,
      json['gasPrice'] as int,
      json['nonce'] as int,
      json['receiver'] as String,
      json['sender'] as String,
      json['signature'] as String,
      json['value'] as String,
      json['version'] as int,
    );

Map<String, dynamic> _$SendTransactionRequestToJson(
        SendTransactionRequest instance) =>
    <String, dynamic>{
      'chainId': instance.chainId,
      'data': instance.data,
      'gasLimit': instance.gasLimit,
      'gasPrice': instance.gasPrice,
      'nonce': instance.nonce,
      'receiver': instance.receiver,
      'sender': instance.sender,
      'signature': instance.signature,
      'value': instance.value,
      'version': instance.version,
    };
