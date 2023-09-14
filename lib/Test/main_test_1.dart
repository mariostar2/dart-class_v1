import 'package:flutter_v1/Test/student.dart';
import 'package:flutter_v1/Test/Subway.dart';

void main(){
  Subway line1 = Subway(1, 0,0);
  Subway line2 = Subway(2, 0,0);
  Student student1 = Student("티모",20000);
  Student student2 = Student("울트라",10000);

  student1.takeSubway(line1);
  line1.showInfo();
  print("-------------------------------------------");
  student1.takeSubway(line2);
  line2.showInfo();
}