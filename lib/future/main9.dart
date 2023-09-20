import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart';



void main() {
  String jsonStr ='''
  
 {
"postId": 2,
"id": 6,
"name": "et fugit eligendi deleniti quidem qui sint nihil autem",
"email": "Presley.Mueller@myrl.com",
"body": "doloribus at sed quis culpa deserunt consectetur qui praesentium\naccusamus fugiat dicta\nvoluptatem rerum ut voluptate autem\nvoluptatem repellendus aspernatur dolorem in"
},
{
"postId": 2,
"id": 7,
"name": "repellat consequatur praesentium vel minus molestias voluptatum",
"email": "Dallas@ole.me",
"body": "maiores sed dolores similique labore et inventore et\nquasi temporibus esse sunt id et\neos voluptatem aliquam\naliquid ratione corporis molestiae mollitia quia et magnam dolor"
},
{
"postId": 2,
"id": 8,
"name": "et omnis dolorem",
"email": "Mallory_Kunze@marie.org",
"body": "ut voluptatem corrupti velit\nad voluptatem maiores\net nisi velit vero accusamus maiores\nvoluptates quia aliquid ullam eaque"
},
{
"postId": 2,
"id": 9,
"name": "provident id voluptas",
"email": "Meghan_Littel@rene.us",
"body": "sapiente assumenda molestiae atque\nadipisci laborum distinctio aperiam et ab ut omnis\net occaecati aspernatur odit sit rem expedita\nquas enim ipsam minus"
},
{
"postId": 2,
"id": 10,
"name": "eaque et deleniti atque tenetur ut quo ut",
"email": "Carmen_Keeling@caroline.name",
"body": "voluptate iusto quis nobis reprehenderit ipsum amet nulla\nquia quas dolores velit et non\naut quia necessitatibus\nnostrum quaerat nulla et accusamus nisi facilis"
}
  ''';

  //파싱 기술 1 - Map 변환
  print("jsonMap ${json.decode(jsonStr).runtimeType}");
  print(json.decode(jsonStr));
  Map<String,dynamic>jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    print("$key : $value");
    //Todo todo = Todo(postId,id,name,email,body)
  });

}

//파싱 기술 2 - 클래스 설계
class Todo {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  Todo(this.postId, this.id, this.name, this.email, this.body);

  Todo.tojson(Map<String, dynamic> json):

        //초기화 이니셜라이저
        postId = json ["postId"],
        id = json ["id"],
        name = json ["name"],
        email = json ["email"],
        body = json ["body"];
}


