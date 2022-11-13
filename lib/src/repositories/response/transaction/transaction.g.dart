// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionAssets _$TransactionAssetsFromJson(Map<String, dynamic> json) =>
    TransactionAssets(
      json['name'] as String,
      json['description'] as String,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      json['iconPng'] as String,
      json['iconSvg'] as String?,
    );

Map<String, dynamic> _$TransactionAssetsToJson(TransactionAssets instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'tags': instance.tags,
      'iconPng': instance.iconPng,
      'iconSvg': instance.iconSvg,
    };

TransactionAction _$TransactionActionFromJson(Map<String, dynamic> json) =>
    TransactionAction(
      json['category'] as String,
      json['name'] as String,
      json['description'] as String?,
      json['arguments'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$TransactionActionToJson(TransactionAction instance) =>
    <String, dynamic>{
      'category': instance.category,
      'name': instance.name,
      'description': instance.description,
      'arguments': instance.arguments,
    };

TransactionScam _$TransactionScamFromJson(Map<String, dynamic> json) =>
    TransactionScam(
      json['type'] as String,
      json['info'] as String,
    );

Map<String, dynamic> _$TransactionScamToJson(TransactionScam instance) =>
    <String, dynamic>{
      'type': instance.type,
      'info': instance.info,
    };

TransactionResponse _$TransactionResponseFromJson(Map<String, dynamic> json) =>
    TransactionResponse(
      json['txHash'] as String,
      json['gasLimit'] as int,
      json['gasPrice'] as int,
      json['gasUsed'] as int,
      json['miniBlockHash'] as String,
      json['nonce'] as int,
      json['receiver'] as String,
      json['receiverAssets'] == null
          ? null
          : TransactionAssets.fromJson(
              json['receiverAssets'] as Map<String, dynamic>),
      json['receiverShard'] as int,
      json['round'] as int,
      json['senderAssets'] == null
          ? null
          : TransactionAssets.fromJson(
              json['senderAssets'] as Map<String, dynamic>),
      json['senderShard'] as int,
      json['signature'] as String,
      json['status'] as String,
      json['value'] as String,
      json['fee'] as String,
      json['timestamp'] as int,
      json['data'] as String?,
      json['function'] as String?,
      json['action'] == null
          ? null
          : TransactionAction.fromJson(json['action'] as Map<String, dynamic>),
      json['scamInfo'] == null
          ? null
          : TransactionScam.fromJson(json['scamInfo'] as Map<String, dynamic>),
      json['type'] as String?,
      json['originalTxHash'] as String?,
      json['pendingResults'] as bool?,
    );

Map<String, dynamic> _$TransactionResponseToJson(
        TransactionResponse instance) =>
    <String, dynamic>{
      'txHash': instance.txHash,
      'gasLimit': instance.gasLimit,
      'gasPrice': instance.gasPrice,
      'gasUsed': instance.gasUsed,
      'miniBlockHash': instance.miniBlockHash,
      'nonce': instance.nonce,
      'receiver': instance.receiver,
      'receiverAssets': instance.receiverAssets?.toJson(),
      'receiverShard': instance.receiverShard,
      'round': instance.round,
      'senderAssets': instance.senderAssets?.toJson(),
      'senderShard': instance.senderShard,
      'signature': instance.signature,
      'status': instance.status,
      'value': instance.value,
      'fee': instance.fee,
      'timestamp': instance.timestamp,
      'data': instance.data,
      'function': instance.function,
      'action': instance.action?.toJson(),
      'scamInfo': instance.scamInfo?.toJson(),
      'type': instance.type,
      'originalTxHash': instance.originalTxHash,
      'pendingResults': instance.pendingResults,
    };
