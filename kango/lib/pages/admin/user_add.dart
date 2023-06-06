import 'package:flutter/material.dart';

class UserAddPage extends StatelessWidget {
  const UserAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавить пользователя'),
      ),
      body: const Center(
        child: Text('Добавление...'),
      ),
    );
  }
}
