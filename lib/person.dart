void main(){
    Person personKim = Person();
    personKim.myName = "홍길동";
    personKim.phone = "010-1234-5678";
    personKim.age = 20;
    personKim.displayInfo();
}

//클래스 설계하기
class Person{

  //dart 2.2버전 이후 부터 진행
  //nullable type 의 이해
  //dart 이전 버전 에서는 모든 변수가  null이 아닌 값으로 셋팅 됨.
  //명시 적으로 null을 허용할 수 있는 타입이 nullable 타입 이다.
  //string != string?은 다른 타입 이다.
  //?는 nullabletype 이다
  String? myName;
  String? phone;
  int? age;

  void displayInfo(){

    print("person name : $myName ");
    print("Phone number : $phone");
    print("age: $age");
  }


}//end of Person