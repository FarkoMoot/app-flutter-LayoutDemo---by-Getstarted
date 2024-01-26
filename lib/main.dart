import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';

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

class Row2 extends StatelessWidget {
  const Row2({super.key});

  @override
  Widget build(BuildContext context) {

    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Visite este lugar Incrivel !!!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Por apenas 300R',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        FavoriteWidget(),
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if( _isFavorite ) {
        _favoriteCount -= 1;
        _isFavorite = false;
      } else {
        _favoriteCount += 1;
        _isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        IconButton(
          onPressed: _toggleFavorite,
          color: Colors.blue[600],
          icon: _isFavorite
          ? const Icon(
              Icons.star,
            )
          : const Icon(
              Icons.star_border,
            ),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '$_favoriteCount',
        ),
      ],
    );
  }
}

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

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}