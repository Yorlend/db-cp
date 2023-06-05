import 'package:flutter/material.dart';
import 'package:kango/services/text_provider.dart';
import 'package:kango/data/entities/text.dart' as entity;

class TextEditBottomSheet extends StatefulWidget {
  final BuildContext context;
  final TextsProvider provider;
  final entity.Text text;

  const TextEditBottomSheet(this.context, this.provider, this.text,
      {super.key});

  @override
  State<TextEditBottomSheet> createState() => _TextEditBottomSheetState();
}

class _TextEditBottomSheetState extends State<TextEditBottomSheet> {
  final _usersController = TextEditingController();

  final _textEditingController = TextEditingController();
  final _titleEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _textEditingController.text = widget.text.content;
    _titleEditingController.text = widget.text.title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _titleEditingController,
            decoration: const InputDecoration(
              labelText: 'Название текста',
            ),
          ),
          TextField(
            controller: _textEditingController,
            decoration: const InputDecoration(
              labelText: 'Текст',
            ),
          ),
          TextField(
            controller: _usersController,
            decoration: const InputDecoration(
              labelText: 'Пользователи',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () async {
                    await widget.provider.updateText(
                      widget.text.id,
                      _titleEditingController.text,
                      _textEditingController.text,
                      _usersController.text,
                    );
                    Navigator.of(context).pop();
                  },
                  child: const Text('Сохранить'),
                ),
                MaterialButton(
                  color: Theme.of(context).colorScheme.error,
                  onPressed: () => _showDeleteModalDialog(
                      context, widget.provider, widget.text),
                  child: const Text('Удалить'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteModalDialog(
      BuildContext context, TextsProvider provider, entity.Text text) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Удалить текст\n"${text.title}"?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Отмена'),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.error,
                ),
              ),
              onPressed: () async {
                await provider.deleteText(text.id);
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text('Удалить'),
            )
          ],
        );
      },
    );
  }
}
