import 'package:flutter/material.dart';

void main() => runApp(MiLoginApp());

class MiLoginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppHatziry Arellano',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //Fin MaterialApp
  } //Fin de widget
} //Fin Class MiLoginApp

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} // Fin class IngresoSistema

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ), //Fin IconButton
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], //Actions widget
        title: Text('Ingreso al sistema'),
      ), //Fin AppBar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/image09.jpg'),
                SizedBox(height: 16.0),
              ],
            ),
            if (!acceso)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      //fillcolor: colors.amber,
                      labelText: 'Nombre de usuario',
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Password',
                    ),
                    obscureText: true, //codigo de los asteriscos
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('CANCELAR'),
                          onPressed: () {
                            setState(() {
                              acceso = false;
                            });
                          },
                        ), //fin de flatbutton
                        RaisedButton(
                          child: Text(
                            'NEXT2',
                          ),
                          onPressed: () {
                            setState(() {
                              acceso = true;
                            });
                          },
                        ), //fin risebutton
                      ], //fin de ninos widget[]
                    ), //fin de nino row
                  ) //fin de padding
                ], //fin de widget[]
              ) //fin de columna
            //if verdadero
            else
              Center(
                child: Column(
                  children: <Widget>[
                    Text('YAY, Estoy ingresando!'),
                    RaisedButton(
                      elevation: 20.0,
                      child: Text('Cerrar sesion'),
                      onPressed: () {
                        setState(() {
                          acceso = false;
                        });
                      },
                    ) //fin boton sobresaliente
                  ], //fin de ninos widgets[]
                ), //fin de center
              ) //if falso
          ], //fin de widget
        ), //fin de listview
      ), //AREA SEGURA
    ); //Fin de scaffold
  } //Fin widget
} // Fin class _IngresoSistemaState
