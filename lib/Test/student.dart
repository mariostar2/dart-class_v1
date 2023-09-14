import 'package:flutter_v1/Test/Subway.dart';

class Student{
  int money;
  String name;

  Student(this.name,this.money);

  //학생이 지하철 을 탄다
  void takeSubway(Subway takeSubway){
    this.money -= 1300 ;
    takeSubway.take(13000);
  }
}