class Employee{
  //static <-- 객채들이 공유할 수 있는 메모리 공간이다
  //하지만 static은 해당 객체의 속성 값을 나타내는 것은 아니다.
  String? name;
  static int nextEmployeenumber = 1000;
  int employeenumber = 0;

  Employee(String name){
    this.name =name;
    employeenumber = nextEmployeenumber;
    nextEmployeenumber++;
  }
  //함수는 - 독립적인 일련의 코드에 묶음 이다.
  //메서드는 맴버 변수를 활용해서 기능을 구현한다
  void display(){
    print("이름 : $name");
    print("사원번호 $employeenumber");

  }

}
void main(){
  Employee employee1 = Employee("1");//1
  Employee employee2= Employee("2");//2
  Employee employee3 = Employee("3");//3

  employee1.display();
  employee2.display();
  employee3.display();

  //현재 값상태
  //static은 class로 접근이 가능하다
  print(Employee.nextEmployeenumber);

  //제약 조건
  //Employee 클래스 안에 사원 번호 데이터를 받는 변수를 선언하시오
  //단 ,Employee 인스턴스화 하면(객체) 사원 번호는 자동으로 1씩 증가할 수 있도록
  //만들어주세요

}