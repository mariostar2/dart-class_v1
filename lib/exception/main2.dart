void main(){

    //특정 예외를 처리 하고 싶다면 OR 키워드를 사용한다
    try{
        return;
        int result = 10 ~/  0;
        print("result: $result");
    }on IntegerDivisionByZeroException{
        print("반드시 실행 되는 코드");
    }on UnsupportedError{
        print("제공 하지 않는 라이브버리");
    } catch(e,s){
        //모든 에러를 잡아준다
        print("error:$e");
    } finally{
        print("실행 종료");
    }
}