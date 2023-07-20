
class Sprite {
  void move (int x){
    this.x = x;
  }
  Sprite(String name){
    this.name = name;
  }
  String say(){
    return name;
  }
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  bool isShow = true;
  int size = 100;
  int direction = 90;

}


void main (){
  final luca = Sprite('Luca');
  final Hat = Sprite('Hat');
  final Kia = Sprite('Kia');
  print(luca.say());
  print(Hat.say());
  print(Kia.say());
print(luca.name);
}