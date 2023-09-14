enum ClothingSize{
  //범주화
  small,
  medium,
  large,
  xlarge
}

enum TempreatureRange{
  freezing,
  cold,
  warm,
  hot
}

//활용
void main(){

  //enum 타입에서 switch를 쓸때 다쓰거나 혹은 default를 써줘야한다.
  const size = ClothingSize.large;
  print(size.runtimeType);

  switch (size){
    case ClothingSize.small:
      print("작은 사이즈");
      break;
    case ClothingSize.medium:
      print("보통 사이즈");
      break;
    case ClothingSize.large:
      print("큰 사이즈");
      break;
    default :
      print("알 수 없습니다");
  }

}