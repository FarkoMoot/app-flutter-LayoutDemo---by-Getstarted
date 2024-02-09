import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget {
  const TapBoxA ({super.key});

  @override
  State<TapBoxA> createState() => _TapBoxA();
}

class _TapBoxA extends State<TapBoxA> { 
  bool _isActivet = true;

  void _pressButton() {
    if( _isActivet == true ) {
      setState(() {
        _isActivet = false;
      });
    } else {
      setState(() {
        _isActivet = true;
      });
    }
  }


  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: _pressButton,
      child: Container(
        color: _isActivet ? Colors.blue[600] : Colors.green[600] ,
        height: 100,
        width: 100,
        alignment: Alignment.center,
        child: Text(
          _isActivet ? 'Active' : 'Desactive',
        ),
      ),
    );
  }
}