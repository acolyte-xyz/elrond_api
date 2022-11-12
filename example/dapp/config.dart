import 'package:elrond_api/elrond_api.dart';
import 'package:http/io_client.dart';

void main() async {
  final api = ElrondApi(
    client: IOClient(),
    baseUrl: mainnetApiBaseUrl,
  );

  try {
    final result = await api.dapp.config();
    print('result = ${result.toJson()}');
  } on ApiException catch (e) {
    print(e.toJson());
  }
}
