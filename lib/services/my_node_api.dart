import 'package:http/http.dart' as http;

class MyNodeApi {
  // final String _url = 'localhost:3000';
  // final String _path = '/subscribe';

  final String _url = 'us-central1-ambee-cloud.cloudfunctions.net';
  final String _path = '/app/subscribe';

  addSubscriber(String email) async {
    Map _body = {'email': email};
    http.Response _response = await http.post(Uri.https(_url, _path), /* headers: _headers ,*/ body: _body);

    if (_response.statusCode != 200 || _response.statusCode != 201)
      throw 'Error #1 (coming from MailerLite server): status code: ${_response.statusCode} status message: ${_response.reasonPhrase}';
    print(_response.body);
  }
}
