import 'package:http/http.dart' as http;

Future<String> connect(String ip) async {

  var resBody = await http
      .get(Uri.parse("https://ipinfo.io/$ip/geo"))
      .then((response) { return response.body;});

  return resBody;
}
