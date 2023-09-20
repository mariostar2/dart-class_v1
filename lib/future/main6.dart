import 'package:http/http.dart' as http;


void main() {
  //HTTP 요청 및 응답처리를 만들어보자
  //https://jsonplaceholder.typicode.com/todos/10
  //https://jsonplaceholder.typicode.com/posts
  fetchTodoList().then((res) {
    print("http status code : ${res.body}");
  });

}

Future<http.Response> fetchTodoList() async{
  const url = "https://jsonplaceholder.typicode.com/todos/10";
  var response = await http.get(Uri.parse(url));
  return response;
}
