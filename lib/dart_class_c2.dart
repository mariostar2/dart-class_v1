//메인 함수 코드의 시작점
void main(){
  Rectangle rectangle = Rectangle();

  try{
    double result = rectangle.caclutangleArea();
    print("직사각형에 넓이는 : $result");
  }catch(e){
    print("에러 메세지 확인$e");
  }
  print("--------------------------");
  print("여기가 실행이 될까요?");

}


class  Rectangle{
  double? height;
  double? width;

  double caclutangleArea(){
    return width! * height!;    //개발자가 명시적으로 nulld이 아니다라고 명시 할 수 있다
  }
}