import 'package:flutter/material.dart';

class TapBoxB extends StatelessWidget {
  const TapBoxB({
    super.key,
    required this.text,
    required this.funcao,
    required this.isVerificad,
  });

  final String text;
  final ValueChanged<bool> funcao;
  final bool isVerificad;

  void acionaFuncao() {
    funcao(isVerificad);
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: acionaFuncao,
      child: Container(
        width: 100,
        height: 100,
        color: isVerificad ? Colors.blue[600] : Colors.green[600],
        alignment: Alignment.center,
        child: Text(
          isVerificad ? 'Active' : 'Deative',
        ),
      ),
    );
  }

}