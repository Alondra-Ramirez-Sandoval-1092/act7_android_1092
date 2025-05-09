import 'package:flutter/material.dart';

class WidgetDieciseis extends StatefulWidget {
  const WidgetDieciseis({Key? key}) : super(key: key);

  @override
  State<WidgetDieciseis> createState() => _WidgetDieciseisState();
}

class _WidgetDieciseisState extends State<WidgetDieciseis> {
  bool _isFlat = true;

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
          child: Text('Widget 16'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.android_outlined, size: 60),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Toggle Elevation'),
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xffbc96ef), // Mismo color menta del AppBar
                foregroundColor: Colors.white, // Texto blanco
              ),
              child: const Text('Pantalla Inicial!'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isFlat = !_isFlat;
          });
        },
        backgroundColor: const Color(0xffbc96ef), // Mismo color menta
        child: const Icon(Icons.refresh, color: Colors.white),
      ),
    );
  }
}
