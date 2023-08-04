import 'package:flutter/material.dart';

class User{
   String userName;
   int score;
   User(this.userName, this.score);
   User guest = User('Guest', 0);
}

