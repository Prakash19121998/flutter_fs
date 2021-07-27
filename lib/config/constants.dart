import 'package:flutter/material.dart';
import 'package:palfinger/config/palette.dart';

final kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your Value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Palette.primaryRed, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Palette.primaryRed, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

final kLogoTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  color: Palette.primaryRed,
);
