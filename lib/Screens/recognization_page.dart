import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:translator/translator.dart';

class RecognizePage extends StatefulWidget {
  final String path;
  const RecognizePage({Key? key, required this.path}) : super(key: key);

  @override
  State<RecognizePage> createState() => _RecognizePageState();
}

class _RecognizePageState extends State<RecognizePage> {
  bool _isBusy = false;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    final InputImage inputImage = InputImage.fromFilePath(widget.path);
    processImage(inputImage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("recognize page")),
        body: _isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
              padding: const EdgeInsets.all(20),
                child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(hintText: "Text goes here")
              )));
  }

  void processImage(InputImage image) async{
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    setState(() {
      _isBusy = true;
    });
    final RecognizedText recognizedText = await textRecognizer.processImage(image);
    final translator = GoogleTranslator();
    var translatedText = await translator.translate(recognizedText.text, to: 'es');
    // controller.text = recognizedText.text;
    controller.text = translatedText as String;
    setState(() {
      _isBusy = false;
    });
  }
}
