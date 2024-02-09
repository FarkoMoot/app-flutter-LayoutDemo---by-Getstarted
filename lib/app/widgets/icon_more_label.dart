
import 'package:flutter/material.dart';

class IconMoreLable extends StatelessWidget {
  const IconMoreLable({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 28,
          color: Colors.blue[600],
        ),
        Text(
          label,
          selectionColor: Colors.blue[600],
          style: TextStyle(
            fontSize: 14,
            color: Colors.blue[600],
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}