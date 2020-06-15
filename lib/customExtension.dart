import 'package:flutter/material.dart';

extension customWidget on Widget{

  Widget center(){
    return Center(
      child: this,
    );
  }
 Widget flexible(int number){
    return Flexible(child:this,flex:number,);
 }
  Widget paddingAll(double number){
    return Padding(padding: EdgeInsets.all(number),child:this);
  }

  Widget paddingFromLTRB(double L,double T,double R,double B){
    return Padding(padding: EdgeInsets.fromLTRB(L, T, R, B),child: this);
  }

  Widget expanded(){
    return Expanded(child: this);
  }

}