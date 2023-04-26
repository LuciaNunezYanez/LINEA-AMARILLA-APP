import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

mostrarBienvenida(
    BuildContext context, String titulo, String subtitulo, String button,
    {void Function()? funcion}) {
  if (Platform.isAndroid) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: (titulo.length > 0)
                  ? Text(
                      titulo,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : null,
              content: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/hola.png',
                        height: 100,
                      ),
                      Text(
                        'Bienvenido/a a nuestra app de prevención del suicidio, diseñada especialmente para brindarte apoyo y contención en los momentos más difíciles. Sabemos que la vida puede presentarnos situaciones complicadas y dolorosas, pero no estás solo/a. Nuestra app cuenta con un equipo de profesionales altamente capacitados en el área de la salud mental, que están dispuestos a escucharte y acompañarte en todo momento. Aquí podrás encontrar apoyo psicológico y asesoría psiquiátrica de manera confidencial, accesible y oportuna. Si estás luchando contra pensamientos suicidas, te invitamos a registrarte y te conectes con nuestra comunidad de apoyo. Juntos podemos superar este momento difícil y encontrar una luz en el camino.',
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
                // Text(subtitulo)
              ),
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                ElevatedButton(
                    onPressed: (funcion != null)
                        ? funcion
                        : () {
                            Navigator.pop(context);
                          },
                    child: Text(button),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)))
              ],
            ));
  }

  showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
            title: (titulo.length > 0) ? Text(titulo) : null,
            content: (subtitulo.length > 0) ? Text(subtitulo) : null,
            actions: [
              CupertinoDialogAction(
                child: Text(button),
                isDefaultAction: true,
                onPressed: (funcion != null)
                    ? funcion
                    : () {
                        Navigator.pop(context);
                      },
              )
            ],
          ));
}
