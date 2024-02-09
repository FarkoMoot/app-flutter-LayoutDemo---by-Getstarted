import 'package:flutter/material.dart';
import 'package:flutter_user_interface/app/widgets/image_section.dart';
import 'package:flutter_user_interface/app/widgets/parent_widget.dart';
import 'package:flutter_user_interface/app/widgets/row_1.dart';
import 'package:flutter_user_interface/app/widgets/row_2.dart';
import 'package:flutter_user_interface/app/widgets/tap_box_a.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});


  @override
  Widget build(BuildContext context){
    return const Column(
      children: <Widget>[
        ImageSection(
          image:  'images/img-app-flutter.png',
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          children: [
            Row2(),
            Row1(),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TapBoxA(),
              ParenteWidget(),
              
            ],
          ),
        )
      ],
    );
  }
}