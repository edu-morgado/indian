import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

Widget pageTitleStyle(String title) {
  return AutoSizeText(
    title,
    maxLines: 1,
    minFontSize: 18,
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,

    ),
  );
}


Widget drawerStyle(String title) {
  return AutoSizeText(
    title,
    maxLines: 1,
    style: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
    ),
  );
}

Widget feedStyle(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w300
    ),
  );
} 
/***********Event Manager text styles *********/

Widget eventPageTitleStyle(String title) {
  return AutoSizeText(
    title,
    maxLines: 1,
    minFontSize: 22,
    style: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w600, 
    ),
  );
} 

Widget dataTableColumnTitleStyle(String columnTitle){
  return AutoSizeText(
    columnTitle,
    maxLines: 2,
    minFontSize: 8,
    style : TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300
    )
  );
}