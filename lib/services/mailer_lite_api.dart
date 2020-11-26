import 'dart:convert';
import 'package:ambee2_track_progress/sensitive.dart';
import 'package:http/http.dart' as http;

class MailerLiteApi {
  String _url = 'https://api.mailerlite.com/api/v2/groups/105183683/subscribers';
  Map<String, String> _headers = {'X-MailerLite-ApiKey': Sensitive.mailerLiteApiKey};

  addSubscriber(String email) async {
    if (email == null) throw 'Error #0: Empty email';
    Map<String, String> _body = {"email": email};

    http.Response response = await http.post(_url, headers: _headers, body: _body);
    print(response.statusCode);
    if (response.statusCode != 200) {
      dynamic errorMsg = jsonDecode(response.body);
      errorMsg = errorMsg['error']['message'] + ': ' + email;
      //print("memem: $errorMsg");
      throw 'Error #1: $errorMsg; status code: ${response.statusCode}';
    }
    print(response.body);
  }
}
