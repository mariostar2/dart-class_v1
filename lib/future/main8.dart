import 'dart:convert';



void main() {
  String jsonStr ='''
  {
  "albumId": 1,
  "id": 1,
  "title": "accusamus beatae ad facilis cum similique qui sunt",
  "url": "https://via.placeholder.com/600/92c952",
  "thumbnailUrl": "https://via.placeholder.com/150/92c952"
  }
  ''';

  //파싱 기술 1 - Map 변환
  print("jsonMap ${json.decode(jsonStr).runtimeType}");
  print(json.decode(jsonStr));
  Map<String,dynamic>jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    print("$key : $value");
    //Todo todo = Todo(albumId,id,title,url,thumbnailUrl)
  });

}

//파싱 기술 2 - 클래스 설계
class Todo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Todo(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  Todo.tojson(Map<String, dynamic> json):

        //초기화 이니셜라이저
        albumId = json ["albumId"],
        id = json ["id"],
        title = json ["title"],
        url = json ["url"],
        thumbnailUrl = json ["thumbnailUrl"];
}


