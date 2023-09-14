class Student{
  //1.이름 나이 ->private 선언 하시오
  //2. 축약형 get,set 메서드를 만들어주세여.
  String? _name;
  int? _age;

  // String getName(){
  //   return _name!;
  // }

  // int getAge(){
  //   return _age!;
  // }

  String? get name =>name;
  int? get age => age;

  set name(String? name) => _name =name;
  set age(int? age) => _age = age;


  Student(this._name, this._age);



}