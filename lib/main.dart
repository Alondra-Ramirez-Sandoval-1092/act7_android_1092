import 'package:flutter/material.dart';
import 'package:ramirezrutas/pagina_inicial.dart';
import 'package:ramirezrutas/widget_cuarentayocho.dart';
import 'package:ramirezrutas/widget_dieciseis.dart';
import 'package:ramirezrutas/widget_noventayseis.dart';
import 'package:ramirezrutas/widget_ochenta.dart';
import 'package:ramirezrutas/widget_sesentaycuatro.dart';
import 'package:ramirezrutas/widget_treintaydos.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla16': (context) => const WidgetDieciseis(),
        '/pantalla32': (context) => const WidgetTreintaydos(),
        '/pantalla48': (context) => const WidgetCuarentayocho(),
        '/pantalla64': (context) => const WidgetSesentaycuatro(),
        '/pantalla80': (context) => const WidgetOchenta(),
        '/pantalla96': (context) => const WidgetNoventayseis(),
      },
    );
  }
}
