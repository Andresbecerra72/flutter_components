import 'package:flutter/material.dart';

// Routes
import 'package:componentes/src/routes/routes.dart';
// Temporal
import 'package:componentes/src/pages/alert_page.dart';



// import 'package:componentes/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false, // elimina el mensaje de Debug en el dispositivo
     // home: HomePage()
     // codigo para definir las rutas de navegacion
     initialRoute: '/',
    routes: getAplicationRoutes(),
    onGenerateRoute: (RouteSettings settings){

      return MaterialPageRoute(
        builder: (BuildContext context) => AlertPage()
        );

    },
    );
  }
}