void main(){

  //1.null 에 안전한 객체의 사용 가능한 속성 접근
  String? maybeName;
  int length =  maybeName?.length ?? 0; //??: null 병합 연산자
  //문자열 값이 null 아니면 문자열 길이를 리턴하고 null 이면 길이값 0을 리턴한다.
  print("length : $length");

  //2. null의 안전한 객체 메서드 접근 (null check 연산자)
  String? name = getName();    //null 또는 문자열을 반환할 수 있다
  String? returnName = name?.toLowerCase() ?? "Hong";
  print ("returnname :$returnName");

  //3.?? 연산자 null 병합 연산자 테스트
  String displayName = name ?? "Unkow";
  print("displayName: $displayName");
}
//함수
String? getName(){
  return null;
}