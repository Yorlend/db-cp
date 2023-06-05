import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kango/data/dialogs/users_selector.dart';
import 'package:kango/data/entities/user.dart';
import 'package:kango/services/text_provider.dart';
import 'package:kango/data/entities/text.dart' as entity;
import 'package:kango/services/user.dart';
import 'package:provider/provider.dart';

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
  List<User>? _selectedUsers;
  final _textEditingController = TextEditingController();
  final _titleEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _textEditingController.text = widget.text.content;
    _titleEditingController.text = widget.text.title;
  }

  void _selectUsers(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        final usersService = GetIt.I.get<UserService>();
        return Consumer<TextsProvider>(
          builder: (context, provider, child) {
            return UsersSelectorDialog(
              allUsersFuture: usersService.getRegularUsers(),
              selectedUsersFuture: Future.value(_selectedUsers),
              onConfirmed: (users) {
                setState(() {
                  _selectedUsers = users;
                });
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TextsProvider>(
      builder: (context, provider, child) {
        if (_selectedUsers == null) {
          provider.getAccecients(widget.text.id).then(
                (u) => setState(() => _selectedUsers = u),
              );
        }
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: _selectedUsers == null || _selectedUsers!.isEmpty
                          ? const Text('Никому не доступно')
                          : Text(
                              '${_selectedUsers!.length} пользователям доступно'),
                    ),
                    MaterialButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () => _selectUsers(context),
                      child: const Text(
                        'Выбрать',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
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
                        await Future.wait([
                          widget.provider.updateText(
                            widget.text.id,
                            _titleEditingController.text,
                            _textEditingController.text,
                          ),
                          widget.provider.updateAccecients(
                            widget.text.id,
                            _selectedUsers!,
                          ),
                        ]);
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Сохранить',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    MaterialButton(
                      color: Theme.of(context).colorScheme.error,
                      onPressed: () => _showDeleteModalDialog(
                          context, widget.provider, widget.text),
                      child: const Text(
                        'Удалить',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
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
