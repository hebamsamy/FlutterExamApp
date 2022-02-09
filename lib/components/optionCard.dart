import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String optionText;
  final Color optionColor;
  final VoidCallback handleOnPress;
  ButtonStyle? outlineButtonStyle;
  OptionCard(
      {required this.optionText,
      required this.optionColor,
      required this.handleOnPress}) {
    this.outlineButtonStyle = OutlinedButton.styleFrom(
      primary: optionColor,
      // minimumSize: Size(88, 36),
      // padding: EdgeInsets.symmetric(horizontal: 16),
      // shape: const RoundedRectangleBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(2)),
      // ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(50),
        child: OutlinedButton(
          style: this.outlineButtonStyle,
          child: ListTile(
            title: Text(optionText),
          ),
          onPressed: handleOnPress,
        ),
      ),
    );
  }
}
