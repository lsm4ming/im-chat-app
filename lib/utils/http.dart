import 'package:http/http.dart' as http;

var client = http.Client();

void send() async {
  var url = Uri.https('baidu.com', '/');
  var response =
      await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  print(await http.read(Uri.https('example.com', 'foobar.txt')));
}
