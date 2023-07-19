import 'package:flutter/material.dart';

class DashboardTextCustomWidget extends StatelessWidget {
  final String title;
  final TextStyle titleStyle;
  final String? additionalText;
  final TextStyle? additionalTextStyle;

  const DashboardTextCustomWidget({
    Key? key,
    required this.title,
    required this.titleStyle,
    this.additionalText,
    this.additionalTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: titleStyle,
        ),
        if (additionalText != null && additionalTextStyle != null)
          SizedBox(width: 45),
        Text(
          additionalText!,
          style: additionalTextStyle,
        ),
        SizedBox(width: 16),
      ],
    );
  }
}
