class MyClass{
  late String name;

  MyClass(){
    //late: 늦게 초기화 하도록 하는 변수
    //서버에서 요청한 값을 받아서 클래스를 만들어야 할 때 사용함.
    //통신을 통해 초기값을 받아야 하는 경우 사용이 가능하다.
    name = "홍길동";
  }

  void printString(){
    print("name: $name");
  }
}


void main(){
  final myObject = MyClass();
  myObject.printString();
}