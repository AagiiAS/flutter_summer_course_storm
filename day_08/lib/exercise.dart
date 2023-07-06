class Rectangle {
  int _width =0;
  int _height =0;
  int getWidth =0;
  int getHeight=0;
  void getMeasures(){
    print(" i'm rectangle. I have a height of $_height and width of $_width");
  }
  void setWidth(int width){
    this._width = width;
  }
  void setHeight(int height){
    this._height = height;
  }
  void calculateArea(int getWidth, int getHeight){
  print(getWidth*getHeight/2);
  }
}

void main(){
  final rectangle= Rectangle();
  print(rectangle);
  rectangle.getMeasures();
  rectangle.setWidth(5);
  rectangle.setHeight(10);
  rectangle.getMeasures();
}