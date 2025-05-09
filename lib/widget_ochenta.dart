import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WidgetOchenta(),
    );
  }
}

class WidgetOchenta extends StatefulWidget {
  const WidgetOchenta({Key? key}) : super(key: key);

  @override
  State<WidgetOchenta> createState() => _WidgetOchentaState();
}

class _WidgetOchentaState extends State<WidgetOchenta> {
  List<int> items = List<int>.generate(100, (int index) => index);

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
      body: ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return Dismissible(
            key: Key(item.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Item $item eliminado')),
              );
            },
            child: ListTile(
              title: Text('Item $item'),
            ),
          );
        },
      ),
    );
  }
}
