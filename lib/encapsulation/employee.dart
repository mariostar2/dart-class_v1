class Employee{
  //변수를 Private 으로 선언 하는 방법 언더 스코어 (_)를 사용 한다
  int? _id;       //private 속성 이다
  String? _name;


  //getter
  //1번 nullable로 만든다
  //2 강제로 지시한다(!)을 변수에 사용
  int getId(){

    return _id!;

  }
  String getName(){
    return _name!;
  }

  //setter
  void setId(int id){
    //방어적 코드 작성 가능
    if(id < 0){
      print("사용자에게 잘못된 값을 입력했습니다");
    }
    this._id = id;
  }

  void setName(String name){
    this._name = name;
  }
}