import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

mostrarAlerta(
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
              content: (subtitulo.length > 0) ? Text(subtitulo) : null,
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
