mixin AttackBehavior{
  void attack(Monster target);
}

abstract class Weapon{
  int damage;
  Weapon(this.damage);
}

class Sword extends Weapon{
  Sword(int damage) : super(damage);
}

class Bow extends Weapon{
  Bow(int damage) : super(damage);
}

class Monster with AttackBehavior{

  String name;
  num hp;
  //무기
  Weapon weapon;
  Monster(this.name,this.hp,this.weapon);


  void showInfo(){
    print("======상태창======");
    print("이름 : $name");
    print("무기 데미지 : ${weapon.damage}");
    print("현재 hp : $hp");

  }

  @override
  void attack(Monster target) {
    print("${this.name}이 ${target.name}");
    target.hp -= this.weapon.damage;
  }
}

void main(){

  Sword sword = Sword(300);
  Bow bow = Bow(500);

  Monster monster1 =  Monster("검은 드래곤", 10000,sword );
  Monster monster2 =  Monster("고블린", 5000, bow);

  monster1.attack(monster2);
  monster1.attack(monster2);
  print("-------------------------");
  monster2.showInfo();

  monster2.attack(monster1);
  monster2.attack(monster1);
  monster1.showInfo();
}