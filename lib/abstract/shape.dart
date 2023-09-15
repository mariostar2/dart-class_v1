  abstract class Shape {
    // 추상 메서드 선언
    //자식 클래스는 보다 구체적인 클래스로 설계 해야 한다.
    //추상 클래스를 자식 클래스에 받아서 추상 매서드를 abstract 로 변경 혹은 구현 메소드로 변경한다.
    double area(); // 메서드의 body 가 없고 선언부만 있다

    void display() {
      print("This is a shape");
    }
  }

  // 자식 클래스는 보다 구체적인 클래스로 설계 해야 한다.
  class Circle extends Shape {
    double radius;

    Circle(this.radius);

    @override
    double area() {
      return 3.14 * radius * radius;
    }

    @override
    void display() {
      print("원에 반지름 값은 : $radius");
    }
  }

  class Rectangle extends Shape {
    double width;
    double height;

    Rectangle(this.width, this.height);

    @override
    double area() {
      return width * height;
    }

    @override
    void display() {
      print("직사각형에 가로 : $width , 세로 $height 입니다");
    }
  }

  void main() {
    // 추상 클래스는 new 와 생성자를 호출할 수 없다. (정의는 가능)
    // Shape shape = new Shape();
    Circle circle = Circle(5);
    Rectangle rectangle = Rectangle(4, 6);

    List<Shape> shpes=[circle,rectangle];

    for(var s in shpes){
      s.display();
      print(s.area());
      print("---------------");
    }

  }

  //dart 에서는 익명 구현 클래스의 개념은 없습니다

