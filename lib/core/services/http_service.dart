import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class HttpService {
  static const BASE_URL = 'https://5fa32fccf10026001618d3cc.mockapi.io';

  Map<String, String> makeHeader() {
    // TO DO: implementar bearer token...

    return {'Content-type': 'application/json'};
  }

  Future<http.Response> httpGet(String endpoint) async {
    return http.get('$BASE_URL$endpoint', headers: makeHeader());
  }
}
