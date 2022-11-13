// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendTransactionResponse _$SendTransactionResponseFromJson(
        Map<String, dynamic> json) =>
    SendTransactionResponse(
      json['receiver'] as String,
      json['receiverShard'] as int,
      json['sender'] as String,
      json['senderShard'] as int,
      json['status'] as String,
      json['txHash'] as String,
    );

Map<String, dynamic> _$SendTransactionResponseToJson(
        SendTransactionResponse instance) =>
    <String, dynamic>{
      'receiver': instance.receiver,
      'receiverShard': instance.receiverShard,
      'sender': instance.sender,
      'senderShard': instance.senderShard,
      'status': instance.status,
      'txHash': instance.txHash,
    };
