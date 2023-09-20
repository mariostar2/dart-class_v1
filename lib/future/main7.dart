import 'dart:convert';


void main() {

  //여러 줄의 문자열 ''' , """
  String jsonStr ='''
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  }
  ''';

  //1단계
  //JSON 문자열 형식을 Map 구조로 파싱해보자.
  print("jsonMap ${json.decode(jsonStr).runtimeType}");
  print(json.decode(jsonStr));
  Map<String, dynamic> jsonMap = json.decode(jsonStr);  //json.decode 매서드를 사용해서 Map 구조로 변환된 결과
  jsonMap.forEach((key, value) {
    //Todo todo = Todo(userId,id,title,completed)
    // print("key: $key");
    // print("value: $value");
    print("$key : $value");
  });


}

class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  //기본 생성자
  Todo(this.userId,this.id,this.title,this.completed);
  //명명된 생성자 2 - 이름이 있는 생성자
  Todo.fromJson(Map<String,dynamic> json):
        userId = json["userId"],
        id = json["id"],
        title= json["title"],
        completed = json["completed"];


}
