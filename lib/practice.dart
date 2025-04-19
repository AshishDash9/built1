import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:built1/Home.dart';

void main(){
  runApp( MyApk());
}
 class MyApk extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Home(),
   );
  }


}