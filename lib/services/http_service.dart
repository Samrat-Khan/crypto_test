import 'dart:convert';

import 'package:crypto_proj/utils/snack_message.dart';
import 'package:http/http.dart' as http;

class HttpService {
  final String _baseUrl = 'https://pro-api.coinmarketcap.com/v1';
  final String _apiKey = '298b28a4-9926-49e7-9d7f-484c4276e94b';

  Future<Map<String, dynamic>?> get({required String apiPath}) async {
    try {
      final res = await http.get(
        Uri.parse(_baseUrl + apiPath),
        headers: {
          'X-CMC_PRO_API_KEY': _apiKey,
        },
      );

      if (res.statusCode == 200) {
        return jsonDecode(res.body);
      } else {
        SnackMessgae.showWarningMsg(
            jsonDecode(res.body)['status']['error_message']);

        return null;
      }
    } catch (e) {
      SnackMessgae.showWarningMsg(e.toString());
      return null;
    }
  }
}
