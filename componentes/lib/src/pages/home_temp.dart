import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco','Seis','Siete','Ocho','Nueve','Diez'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp')
      ),
      body: ListView(
        children: _crearItemsCorto()
      )
    );
  }
/*
  List <Widget> _crearItems() {
    List <Widget> lista = new List <Widget>();
    
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title:  Text(opt)
      );

      // lista.add(tempWidget);
      // lista.add(Divider(color: Color.fromARGB(50, 34, 139, 34), height: 20.0,));
      //Operador de cascada usa el doble punto .. para mantener la referencia
      //la instrucción no se cierra con punto y coma. Se escribe la siguiente instrucción.
      lista..add(tempWidget)
           ..add(Divider(color: Color.fromARGB(50, 34, 139, 34), height: 20.0,));
    }

    return lista;
  }
*/

  List <Widget> _crearItemsCorto() {

    var widgets = opciones.map( (elemento) {
      return Column(
        children: [
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text(elemento + '!'),
            subtitle: Text('Subtitulo ' + elemento),
            onTap: (){}
          ),
          Divider(color: Color.fromARGB(50, 34, 139, 34), height: 50.0)
        ],
      );
    }).toList();

    return widgets;
  }

}