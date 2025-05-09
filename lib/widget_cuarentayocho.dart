import 'package:flutter/material.dart';

class WidgetCuarentayocho extends StatefulWidget {
  const WidgetCuarentayocho({Key? key}) : super(key: key);

  @override
  State<WidgetCuarentayocho> createState() => _WidgetCuarentayochoState();
}

class _WidgetCuarentayochoState extends State<WidgetCuarentayocho> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text('Row 1'),
          Text('Row 2'),
          Text('Row 3'),
          Text('Row 4'),
          Text('Row 5'),
          Text('Flutter Mapp'),
        ],
      ),
    );
  }
}
