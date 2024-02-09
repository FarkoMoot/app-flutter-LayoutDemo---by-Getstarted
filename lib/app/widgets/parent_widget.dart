import 'package:flutter/material.dart';
import 'package:flutter_user_interface/app/widgets/tap_box_b.dart';

class ParenteWidget extends StatefulWidget {
  const ParenteWidget({super.key});

  @override
  State<ParenteWidget> createState () => _ParenteWidget();
}

class _ParenteWidget extends State<ParenteWidget> {
  bool _isVerificad = true;


  void _trocaBooleam(bool newValue){
    if (_isVerificad) {
      setState(() {
        _isVerificad = !_isVerificad;
      });
    } else {
      setState(() {
        _isVerificad = !_isVerificad;
      });
    }

  }


  @override
  Widget build(BuildContext context) {

    return TapBoxB(
      text: '1234',
      isVerificad: _isVerificad,
      funcao: _trocaBooleam,
    );
  }
}