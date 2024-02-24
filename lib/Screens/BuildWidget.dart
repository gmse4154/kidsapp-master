import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kids_app/DataStorage/constants.dart';

FlutterTts _flutterTts = FlutterTts();

class NewWidget extends StatefulWidget {
  NewWidget({required this.widgetName, this.widget});

  final String widgetName;
  final Widget? widget;
  static setlanguage(String lang) async {
    await _flutterTts.setLanguage(lang);
  }

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  Future _speak() async {
    await _flutterTts.setPitch(1);
    await _flutterTts.setVolume(1);
    await _flutterTts.speak(
      widget.widgetName,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _speak();
  }

  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            onTap: () {
              _speak();
            },
            child: widget.widget == null
                ? Text(
                    widget.widgetName,
                    style: widgetNameStyle,
                  )
                : widget.widget!));
  }
}
