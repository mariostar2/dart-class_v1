import 'package:flutter_v1/encapsulation/passbook.dart';

void main(){


  Passbook passbook = Passbook("홍길동", '1111', 10000);
  //캡슐화
  passbook.accountBalance = 10000;
}