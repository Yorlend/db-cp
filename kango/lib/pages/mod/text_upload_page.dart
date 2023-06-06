import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:kango/services/text_provider.dart';
import 'package:kango/vendor/ocr/ocr_space.dart';
import 'package:provider/provider.dart';

class TextUploadPage extends StatefulWidget {
  const TextUploadPage({super.key});

  @override
  State<TextUploadPage> createState() => TextUploadPageState();
}

class TextUploadPageState extends State<TextUploadPage> {
  File? processingFile;
  String? parsedText;

  final _textController = TextEditingController();
  final _titleController = TextEditingController();

  void _chooseProcessingFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        processingFile = File(result.files.single.path!);
      });
    } else {
      // User canceled the picker
    }
  }

  void _makeOCRRequest() async {
    if (processingFile != null) {
      final ocrResult = await OCRSpace().analyzeImage(processingFile!);
      if (!ocrResult.ok) {
        // TODO
      } else {
        setState(() {
          parsedText = ocrResult.parsedText;
          _textController.text = parsedText!;
          _titleController.text = processingFile!.path.split("/").last;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Загрузить текст'),
      ),
      body: processingFile == null
          ? Center(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: _chooseProcessingFile,
                child: const Text('Выбрать файл'),
              ),
            )
          : (parsedText == null
              ? Center(
                  child: Column(
                    children: [
                      Text('Выбран файл: ${processingFile!.path}'),
                      MaterialButton(
                        color: Colors.blue,
                        onPressed: _chooseProcessingFile,
                        child: const Text('Выбрать другой файл'),
                      ),
                      MaterialButton(
                        color: Colors.blue,
                        onPressed: _makeOCRRequest,
                        child: const Text('Обработать'),
                      ),
                    ],
                  ),
                )
              : _editorWidget(context)),
    );
  }

  Widget _editorWidget(BuildContext context) {
    return Consumer<TextsProvider>(
      builder: (context, provider, child) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Заголовок текста',
                  ),
                  controller: _titleController,
                  maxLines: null,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Распознанный текст',
                  ),
                  controller: _textController,
                  maxLines: null,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      provider.uploadText(
                          _titleController.text, _textController.text);
                      Navigator.pop(context);
                    },
                    child: const Text('Добавить текст'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
