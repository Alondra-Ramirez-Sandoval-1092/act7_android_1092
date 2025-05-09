import 'package:flutter/material.dart';

class WidgetNoventayseis extends StatefulWidget {
  const WidgetNoventayseis({Key? key}) : super(key: key);

  @override
  State<WidgetNoventayseis> createState() => _WidgetNoventayseisState();
}

class _WidgetNoventayseisState extends State<WidgetNoventayseis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffbc96ef), // Fondo menta
        titleTextStyle: const TextStyle(
          color: Colors.white, // Letra blanca
          fontSize: 20.0, // Tamaño 20
        ),
        title: const Center(
          child: Text('Widget 2'),
        ),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            // Acción del botón
          },
          child: const Text('Filled Button'),
        ),
      ),
    );
  }
}
