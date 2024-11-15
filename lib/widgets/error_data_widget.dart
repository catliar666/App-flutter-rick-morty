import 'package:flutter/material.dart';

class ErrorDataWidget extends StatelessWidget {
  const ErrorDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Ha ocurrido un error',
            style: TextStyle(fontSize: 20, color: Colors.white)),
        SizedBox(
          height: 30,
        ),
        Icon(
          Icons.cancel, // Cruz de error
          color: Colors.red, // Color de la cruz (rojo por ejemplo)
          size: 50, // Tamaño de la cruz
        )
      ],
    );
  }
}
