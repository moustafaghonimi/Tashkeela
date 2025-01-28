import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

void customToast(BuildContext context, String message) {
  showToast(message,
      context: context,
      animation: StyledToastAnimation.size,
      reverseAnimation: StyledToastAnimation.fade,
      position: StyledToastPosition.top,
      animDuration: Duration(seconds: 1),
      duration: Duration(seconds: 4),
      curve: Curves.elasticOut,
      reverseCurve: Curves.easeInOut,
      backgroundColor: Appcolor.primaryColor,
      textStyle: AppTextThem.black16w400.copyWith(fontSize: 14));
}
