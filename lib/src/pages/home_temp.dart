
import 'package:flutter/material.dart';





class HomePageTemp extends StatelessWidget {


  // variables
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
       body: ListView(
         children:[] //_crearItems()
         
       )
    );
   
  }



// -----------Metodos------------------------

// List<Widget> _crearItems() {

//   List<Widget> lista = new List<Widget>();

// for (String opc in opciones) {

//   final tempWidget = ListTile(
//     title: Text( opc ),
//     subtitle: Text('Cualquier cosa'),
//     leading: Icon(Icons.access_alarm),
//     trailing: Icon(Icons.keyboard_arrow_right),
//     onTap: (){},
//   );
  

// lista..add(tempWidget)
//       ..add(Divider());


// }


// return lista;
// }



 } // END class