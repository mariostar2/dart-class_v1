//await 키워드를 가지는 함수는 선언부에 async를 선언 해줘야  한다
void main() async{

  //동기성 - 모든 코드가 순차적으로 진행되는 형태
  //비동성 - 코드가 동시 다발적으로 실행, 순차적으로 보장을 할 수 없는 상태

  print("task1.........");
  var data1 = await fetchData();    //기대 값 "2초 data" 문자열
  print(data1.runtimeType);
  print("data  : $data1");
  print("task2.........");
  print("task3.........");
}

Future<String> fetchData() {
  //2초 뒤에 실행되는 코드를 작성하기
  // return Future.delayed(const Duration(seconds: 2),(){
  //   return "2초 data";
  // });

  return Future.delayed(const Duration(seconds: 2), () => "2초 data");
}