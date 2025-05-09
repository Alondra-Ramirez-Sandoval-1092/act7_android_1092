import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WidgetSesentaycuatro extends StatefulWidget {
  const WidgetSesentaycuatro({Key? key}) : super(key: key);

  @override
  State<WidgetSesentaycuatro> createState() => _WidgetSesentaycuatroState();
}

class _WidgetSesentaycuatroState extends State<WidgetSesentaycuatro> {
  String? _currentText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbc96ef), // Fondo menta
        titleTextStyle: const TextStyle(
          color: Colors.white, // Letra blanca
          fontSize: 20.0, // Tamaño 20
        ),
        title: const Center(
          child: Text('Widget 64'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            CupertinoSegmentedControl(
              children: {
                'Flutter': Container(
                  color: _currentText == 'Flutter'
                      ? Colors.orangeAccent[100]
                      : Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Flutter'),
                ),
                'Mapp': Container(
                  color: _currentText == 'Mapp'
                      ? Colors.orangeAccent[100]
                      : Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Mapp'),
                ),
                'YouTube': Container(
                  color: _currentText == 'YouTube'
                      ? Colors.orangeAccent[100]
                      : Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: const Text('YouTube'),
                ),
              },
              onValueChanged: (String value) {
                setState(() {
                  _currentText = value;
                });
              },
            ),
            const SizedBox(height: 50),
            _currentText != null
                ? Text(
                    _currentText!,
                    style: const TextStyle(fontSize: 50),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
