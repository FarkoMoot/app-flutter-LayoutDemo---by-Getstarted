import 'package:flutter/material.dart';

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