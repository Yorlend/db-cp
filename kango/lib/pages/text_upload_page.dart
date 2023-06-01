import 'package:flutter/material.dart';

class TextUploadPage extends StatelessWidget {
  const TextUploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Загрузить текст'),
      ),
      body: const Center(
        child: Text('Загрузка...'),
      ),
    );
  }
}
