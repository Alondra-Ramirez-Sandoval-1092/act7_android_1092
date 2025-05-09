import 'package:flutter/material.dart';

class WidgetTreintaydos extends StatefulWidget {
  const WidgetTreintaydos({Key? key}) : super(key: key);

  @override
  State<WidgetTreintaydos> createState() => _WidgetTreintaydosState();
}

class _WidgetTreintaydosState extends State<WidgetTreintaydos> {
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
      body: myWidget(),
    );
  }
}

myWidget() => Builder(
      builder: (BuildContext context) {
        return Text(
          'Text with Theme',
          style: Theme.of(context).textTheme.displayLarge,
        );
      },
    );
