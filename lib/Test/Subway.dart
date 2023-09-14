class Subway{
  int lineNumber;
  int count;
  int money;

  //명명된 생성자 만들기 { }
  Subway(this.lineNumber, this.count,this.money);

  //승객 태우다
  void take(int money){
    this.money += money;
    this.count ++;
  }
  void showInfo(){
    print ("호선 : $lineNumber");
    print ("수익금 : $money");
    print ("승객수 : $count");
  }
}