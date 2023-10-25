import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  final String today = 'today';

  // async programming
  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    // Future 타입 : 미래에 받을 값의 타입을 알려줌
    // await은 async함수 내에만 존재해야 함
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
  }
}
