import 'package:flutter/material.dart';

/// إضافة مسافة ديناميكية
Widget verticalSpace(double height) => SizedBox(height: height);
Widget horizontalSpace(double width) => SizedBox(width: width);

/// مسافات جاهزة (Reusable)
const SizedBox verticalSpaceSmall = SizedBox(height: 10);
const SizedBox verticalSpaceMedium = SizedBox(height: 20);
const SizedBox verticalSpaceLarge = SizedBox(height: 40);

const SizedBox horizontalSpaceSmall = SizedBox(width: 10);
const SizedBox horizontalSpaceMedium = SizedBox(width: 20);
const SizedBox horizontalSpaceLarge = SizedBox(width: 40);
