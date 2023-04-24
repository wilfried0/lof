import 'package:flutter/material.dart';
import 'package:lof/utils/colors.dart';

import '../utils/dimens.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;

  const CustomButton(
      {Key? key,
        required this.onPressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: LofDimens.fielHeight,
      width: MediaQuery.of(context).size.width ,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: LofColors.vert,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: LofColors.blanc,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          //overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}