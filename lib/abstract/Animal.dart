abstract class Animal{
  String name;

  Animal(this.name);
  void makeSound();
}

class Dog extends Animal{

  //메모리에 animal이 먼저 올라가야한다(초기화 이니셜라이즈)
  //부모가 먼저 메모리에 있어야한다.
  Dog(String name) : super(name);

  @override
    void makeSound(){
      print("$name 이 멍멍 합니다");
    }
}

class Cat extends Animal{

  //부모쪽에 메모리 입력
  Cat(String name)  : super(name);

  @override
  void makeSound(){
    print("$name 이 냐옹 냐옹 합니다");
  }


  void main(){
    List<Animal> animals=[Dog("숭이"),Cat("순이")];

    for(var a in animals){
      a.makeSound();
    }
  }
}