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
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
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
        Row(
          children: [
            Icon(
              Icons.star,
              size: 22,
              color: Color.fromRGBO(30, 136, 229, 1),
            ),
            SizedBox(
              width:6,
            ),
            Text(
              '41',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
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