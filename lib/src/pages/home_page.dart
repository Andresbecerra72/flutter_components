import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';




class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:  Text('Componentes'),
     ),
     body: _lista(),
    );
  }


// -----------Metodos--------------------
 Widget _lista() {

   // print(menuProvider.opciones);


return FutureBuilder(
  future: menuProvider.cargarData(),
  initialData: [],
  builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {

      print(snapshot.data);


    return ListView(
      children: [] //_listaItems(snapshot.data, context) 
    );

  },
);


 }

 List<Widget> _listaItems(List<dynamic> data, BuildContext context) {


final List<Widget> opciones = [];

data.forEach(( opt ) {

  final widgetTemp = ListTile(
    title: Text(opt['texto']),
    leading: getIcon(opt['icon']),
    trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
    onTap: (){

// navegacion por nombre
Navigator.pushNamed(context, opt['ruta']);




// navegacion a una pantalla
/*   final route = MaterialPageRoute(
        builder: (context) {
                return AlertPage();
              });

      Navigator.push(context, route);
*/

    },
  );


  opciones..add(widgetTemp)
          ..add(Divider());
  
});


return opciones;

 }




}// END class