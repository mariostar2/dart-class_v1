//일반 클래스를 사용하는 방법


class laptop{


  turnOn(){
    print("전원을 켭니다");
  }

  turnOff(){
    print("전원을 끕니다");

  }


}

class MacBook implements laptop{


  @override
  turnOn() {
    print("전원을 켭니다");
  }

  @override
  turnOff() {
    print("전원을 끕니다");
  }
}
void main(){
  MacBook book = MacBook();
  book.turnOff();
  book.turnOn();

}

