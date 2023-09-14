class Person{

  String? name;
  int? age;

  void display(){
    print("name : $name");
    print("age : $age");
  }
}


class Student extends Person{

      //부모에 있는 속성과 메서드를 물려 받는다
    String? schoolName;
    String? schoolAdress;

    //@override
    void display(){
      print("name : $name");
      print("age : $age");
      print("schoolName : $schoolName");
      print("schoolAdress : $schoolAdress");
    }

}

void main(){
  Student student = Student();
  student.name = "홍길동";
  student.age = 30;
  student.schoolName = "그";
  student.schoolAdress = "부산앞바다";
  student.display();

}