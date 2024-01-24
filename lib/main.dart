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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Container(),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Container extends StatelessWidget {
  const Container({super.key});


  @override
  Widget build(BuildContext context){
    return const Column(
      children: <Widget>[
        SizedBox(
          height: 250,
          width: double.infinity,
          child: ImageSection(
            image:  'images/img-app-flutter.png',
          ),
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
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          ),
        ),
      ],
    );
  }
}


class Row1 extends StatelessWidget {
  const Row1({super.key});

  @override
  Widget build(BuildContext context) {

    return const Row(
      mainAxisSize: MainAxisSize.min,
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
    );
  }
}

class Row2 extends StatelessWidget {
  const Row2({super.key});

  @override
  Widget build(BuildContext context) {

    return const Row(
      
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Column(
          children: [
            Text('Visite este lugar Incrivel !!!'),
            Text('Por apenas 300R'),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 18,
            ),
            Text('41'),
          ],
        )
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
          size: 24,
          color: Colors.blue[600],
        ),
        Text(
          label
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
    return Image.asset(image);
  }
}