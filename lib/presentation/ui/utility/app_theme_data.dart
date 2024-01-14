

import 'package:crafty_bay/presentation/ui/utility/colors.dart';
import 'package:flutter/material.dart';

class AppThemeData{
  static ThemeData lightThemeData= ThemeData(
      primarySwatch: MaterialColor(
          AppColors.primaryColor.value,AppColors.color
      ),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        border: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.primaryColor
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.primaryColor
            )
        ),
        enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.primaryColor
            )
        ),
        errorBorder:  OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red
            )
        ),
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold
        ),
        bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
          ),
          textStyle: TextStyle(
              fontSize: 16,
              letterSpacing: 0.5


          ),
          backgroundColor: AppColors.primaryColor,

        ),
      )
  );
}