void main(){

  String name ="JHON"; //name이라는 변수는 null 이 아니라 문자열만 가질 수 있다
  int age = 30;       //null이 아닌 정수값만 가질 수 있다.

  String? nullableName;   //이 변수는 문자열 또는 null 값을 가질 수 있다
  int? nullableInt;       //이 변수는 정수값 또는 null을 가질 수 있다

  //방어적 코드 !
  if(nullableName !=null){
    print("name $nullableName");
  }
}