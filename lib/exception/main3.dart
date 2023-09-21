
//예외 던지기
void main() {
    //1단계
   /* try{
        //예외발생
        throw Exception("Unknown error");
    }catch(e,s){
        print("예외발생 : $e");
    }
    print("and or me");*/
    //2단계
    try{
        throw TypeError();
    }on TypeError{
        print("type error 에러 처리");
    }catch(e,s){
        print("모든 예외처리");
    }
}

