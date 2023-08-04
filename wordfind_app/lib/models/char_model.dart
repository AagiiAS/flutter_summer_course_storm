import 'package:flutter/material.dart';

class CharModel {
  String?currentValue;
  int?currentIndex;
  String? correctValue;
  bool hintShow;

  CharModel({this.hintShow = false,
    this.correctValue,
    this.currentIndex,
    this.currentValue,

  });

getCurrentValue(){
  if(correctValue != null) {
    return currentValue;
  } else {
    return correctValue;
  }
}
clearValue(){
  currentValue = null ;
  correctValue = null ;
}
}