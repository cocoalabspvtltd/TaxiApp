import 'package:flutter/material.dart';

class HorizontalDataView extends StatelessWidget {
  final String label, text;
  const HorizontalDataView({
    super.key,
    required this.label,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
        ),
        Text(
          ':',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          width: 35,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
