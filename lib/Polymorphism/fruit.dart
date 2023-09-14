class Fruit {
  String name;
  int price;

  Fruit(this.name,this.price);

  void showInfo(){
    print("상품명 : $name");
    print("가격 : $price");
  }
}


class Peach extends Fruit{
  Peach(super.name, super.price);

}

class Banana extends Fruit{
  String origin;
  Banana(super.name, super.price,this.origin);
}
void main(){
  //업캐스팅, 다운캐스팅 의미를 알아보자
  List<Fruit>fruits = [Banana("델몬트바나나", 3000, "필리핀"),Peach("아삭 복숭아",5000)];
  fruits[0].name;
  fruits[0].price;
  fruits[0].showInfo();   //업 캐스팅 된 상테
  //fruits[0].origin      //업 캐스팅은 커파일 시점애 선언된 데이터 타입 까지만 확인할 수 있다.

  //업 캐스팅 된 상태 바나나에 origin 변수에 접근하고 싶다면 어떻게 해야 할까?
  //컴파일 시점에 형 변환 처리를 하면 된다.(casting)
  // Banana banana1 = (Banana)fruits[0];//자바에서 다운캐스팅 했던 방법
  Banana banana1 = fruits[0] as Banana;
  print (banana1.origin);
}