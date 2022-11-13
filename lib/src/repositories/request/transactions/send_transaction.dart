import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'send_transaction.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class SendTransactionRequest {
  final String chainId;
  final String data;
  final int gasLimit;
  final int gasPrice;
  final int nonce;
  final String receiver;
  final String sender;
  final String signature;
  final String value;
  final int version;

  const SendTransactionRequest(
    this.chainId,
    this.data,
    this.gasLimit,
    this.gasPrice,
    this.nonce,
    this.receiver,
    this.sender,
    this.signature,
    this.value,
    this.version,
  );

  factory SendTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$SendTransactionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SendTransactionRequestToJson(this);
}
