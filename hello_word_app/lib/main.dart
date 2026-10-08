import 'package:flutter/material.dart';
//import 'presentation/screens/counter_screen.dart';
import 'presentation/screens/counter_functions_screen.dart';
void main() {
  runApp(MyApp());//funcion principal que nos permite ejecutar la app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});//clase que nos permite crear la app

  @override  //metodo que nos permite construir la app
  Widget build(BuildContext context) { 
    return  MaterialApp( //widget principal de la app dice que dise'o usar el material design
      debugShowCheckedModeBanner: false, //quitar el banner de debug
      theme: ThemeData( 
      useMaterial3: true, //usar el material 3
      colorSchemeSeed: Colors.blue
    ),
      home: const CounterFunctionsScreen(), //widget que nos permite mostrar la pantalla del contador
    );
  }

}