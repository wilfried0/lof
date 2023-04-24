import 'package:flutter/material.dart';

import '../utils/colors.dart';

title(String title) => Center(
  child: Text("$title", style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: LofColors.title
  ),),
);

subTitle(String subTitle) => Center(
  child: Text("$subTitle", style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: LofColors.subTitle
  ),textAlign: TextAlign.center,),
);

label(String label) => Text("$label", style: TextStyle(
    color: LofColors.label,
    fontSize: 15,
    fontWeight: FontWeight.w700
),);