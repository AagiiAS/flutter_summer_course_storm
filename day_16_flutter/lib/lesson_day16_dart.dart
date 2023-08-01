import 'package:flutter/material.dart';

void main() {
  int age = 16;
  if (age > 13 && age < 23) {
    print("Yes I'm a teenager");
  } else {
    print("No I'm not a teenager");
  }
// ? ene zuwuu gej / : means else
  age > 13 && age < 23
      ? print("Yes I'm a teenager")
      : print("No I'm not a teenager");
}
