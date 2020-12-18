import 'package:http/http.dart' as http;
import 'package:ambee2_track_progress/env.dart';

class SendyApi {
  //DEV-MODE: node index.js
  // final String _url = 'localhost:3000';
  // final String _path = '/subscribe';
  //DEV-MODE: firebase serve
  //final String _url = 'localhost:5000';
  //final String _path = '/COPY-THE-NAME/us-central1/app/subscribe';
  //RELEASE-MODE
  // final String _url = 'us-central1-ambee-cloud.cloudfunctions.net';
  // final String _path = '/app/subscribe';
  // //RELEASE-MODE: sendy.tomasbaran.com server
  final String _url = sendyUrl;
  final String _path = '/subscribe';

  addSubscriber(String email) async {
    Map _body = {
      'api_key': sendyApi,
      'email': email,
      'list': sendyAmbee2ExclusiveList,
      'boolean': 'true',
    };
    //DEV-MODE: localhost is not https
    //http.Response _response = await http.post(Uri.http(_url, _path), body: _body);
    //RELEASE-MODE
    http.Response _response = await http.post(Uri.https(_url, _path), body: _body);

    // if (_response.statusCode != 200 && _response.statusCode != 201) {
    //   throw 'Error #1 (coming from MailerLite server): status code: ${_response.statusCode} status message: ${_response.reasonPhrase}';
    // }
    if (_response.body != '1') throw 'Error #1 (from sendy server): ${_response.body}';
  }
}
