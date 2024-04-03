import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// ignore: unused_import
import 'package:nontonid/router/router.dart';

class MovieDetailScreen extends StatelessWidget {
  final String movieId;
  final String movieName;
  const MovieDetailScreen({
    super.key,
    required this.movieId,
    required this.movieName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          // Untuk  membedakan tampilan button Arrow back pada Ios/Android
          icon: Platform.isIOS
              ? const Icon(Icons.arrow_back_ios)
              : const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text('Movie Detail - $movieId'),
      ),
      body: Text('$movieName'),
    );
  }
}
