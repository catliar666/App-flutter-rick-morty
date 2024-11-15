import 'package:flutter/material.dart';

class BannerInfo extends StatelessWidget {
  const BannerInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/fondo.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(255, 230, 229, 229), BlendMode.multiply),
            opacity: 0.2),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The Rick & Morty API',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(
              'Aplicacion realizada por María Ordóñez, con la api gratuita de Rick and Morty',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
