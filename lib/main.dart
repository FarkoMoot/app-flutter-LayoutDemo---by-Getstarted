import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_user_interface/app/(public)/page_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout - by GetStarted',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Layout - by GetStarted'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Container1(),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
/* Muda parent e selfit
class ParenteChangeColor extends StatefulWidget {
  const ParenteChangeColor({
    super.key,
  });

  @override
  State<ParenteChangeColor> createState () => _ParenteChangeColor();
}

class _ParenteChangeColor extends State<ParenteChangeColor> {
  bool _ativado = true;
  bool _ativadoColor = false;

  void mudaCor(bool recebe) {
    if ( _ativadoColor ) {
      setState(() {
        _ativadoColor = !_ativadoColor;
      });
    } else {
      _ativadoColor = !_ativadoColor;
    }
  }



  @override
  Widget build(BuildContext context) {
  
    return TapBoxC(
      activiti: _ativado,
      activitiColor: _ativadoColor,
      onChanged: mudaCor,
    );
  }
}

class TapBoxC extends StatefulWidget {
  const TapBoxC({
    super.key,
    required this.activiti,
    required this.activitiColor,
  });

  final bool activiti;
  final bool activitiColor;
  final ValueChanged<bool> onChanged;

  @override
  State<TapBoxC> createState () => _TapBoxC();
}

class _TapBoxC extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onChanged,
      child: Container(
        alignment: Alignment.center,
        color: activitiColor ? Colors.green[600] : Colors.blue[600],
        width: 100,
        height: 100,
        child: Text(
          activiti ? 'TapBoxC' : 'TapBoxC',
        ),
      ),
    );
  }
}
*/
