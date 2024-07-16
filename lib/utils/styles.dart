import 'package:expense_flutter_web/utils/colors.dart';
import 'package:flutter/material.dart';

ButtonStyle borderButtonStyle = ButtonStyle(
  elevation: WidgetStateProperty.all(0),
  backgroundColor: WidgetStateProperty.all(Colors.white),
  shape: WidgetStateProperty.all(
    RoundedRectangleBorder(
      side: BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
