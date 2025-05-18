import 'package:flutter/cupertino.dart';

Text buildHeader({required String text, double? fontSize,
Color? color,fonFamily,FontWeight? fontWeight}){
  return Text(text,style: TextStyle(
    color: color ,fontSize: fontSize ?? 10,fontFamily: fonFamily ?? "Kufam",
  ),
  );
}