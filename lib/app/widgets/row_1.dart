import 'package:flutter/material.dart';
import 'package:flutter_user_interface/app/widgets/icon_more_label.dart';

class Row1 extends StatelessWidget {
  const Row1({super.key});

  @override
  Widget build(BuildContext context) {

    return const Padding(
      padding: EdgeInsets.fromLTRB(10, 16, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconMoreLable(
            icon: Icons.favorite,
            label: 'Favoritos',
          ),
          IconMoreLable(
            icon: Icons.access_time_sharp,
            label: 'Acess Sharp',
          ),
          IconMoreLable(
            icon: Icons.gamepad,
            label: 'Gamepad SZ',
          ),
        ],
      ),
    );
  }
}