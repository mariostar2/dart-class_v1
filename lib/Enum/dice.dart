import 'dart:math';
//주사위 게임을 만들어 보세여
//1. 단 주사위 숫자는 열거형으로 설계하시오
//2. dart:math 랜덤 변수를 하나 뽑아주세요
//3. switch구문을 활용하여 패턴 매칭을 시켜주세요 enum- 랜덤숫자

enum Dice{
  one,
  two,
  three,
  four,
  five,
  six
}



void main(){
  Dice dice = Dice.six;
  switch(Dice){
    case 6:
      print("6 당첨");
      break;
    case 5:
      print("5 당첨");
      break;
    case 4:
      print("4 당첨");
      break;
    case 3:
      print("3 당첨");
      break;
    case 2:
      print("2 당첨");
      break;
    case 1:
      print("1 당첨");
      break;
  }

}


