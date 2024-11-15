import 'package:flutter/material.dart';
import 'package:practica2/models/personajes_response_model.dart';
import 'package:practica2/services/personajes_service.dart';
import 'package:practica2/widgets/banner_widget.dart';
import 'package:practica2/widgets/error_data_widget.dart';
import 'package:practica2/widgets/no_data_widget.dart';
import 'package:practica2/widgets/scroll_widget.dart';

class HomeScreenFb extends StatelessWidget {
  const HomeScreenFb({super.key});

  @override
  Widget build(BuildContext context) {
    PersonajesService personajesService = PersonajesService();
    Future<List<Personaje>> personajes = personajesService.getPersonajes();
    return Scaffold(
      appBar: AppBar(
        //Botones en el appbar de simple decoracion para posibles funciones con distintas ventanas en un futuro
          leading: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          ),
          shadowColor: const Color.fromARGB(255, 246, 246, 246),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Image.asset(
            'assets/images/logo.png',
            width: 150,
          ),
          elevation: 3,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
          ]),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: BannerInfo(),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: Container(
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(39, 43, 51, 1)),
              child: FutureBuilder<List<Personaje>>(
                future: personajes,
                builder: (BuildContext context,
                    AsyncSnapshot<List<Personaje>> snapshot) {
                  if (snapshot.hasData) {
                    return Scroll(snapshot: snapshot);
                  } else if (snapshot.hasError) {
                    return const Center(child: ErrorDataWidget());
                  } else {
                    return const Center(child: NoDataWidget());
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
