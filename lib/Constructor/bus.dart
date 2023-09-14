class Bus{
  int count;
  int money;

  Bus(this.count, this.money);

  void take(){
    count ++;
    money += money;
  }
}
class student2{
  String name;
  int money;

  student2(this.name, this.money);

  void takeBus(Bus bus){
    money -=1300;
    bus.take();
  }
}
void main(){
  Bus bus100 = Bus(0,0);
  Bus bus200 = Bus(0,0);

  student2 studenKim = student2("김",10000);

  studenKim.takeBus(bus100);

  print(bus100.count);
  print(bus200.count);
}