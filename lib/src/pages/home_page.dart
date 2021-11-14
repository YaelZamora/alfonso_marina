import 'package:alfonso_marina/src/lists/image_list.dart';
import 'package:alfonso_marina/src/lists/title_list.dart';
import 'package:alfonso_marina/src/pages/info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> checked = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    final List<String> categoria = titleList;
    final List<String> imagen = imageList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mueblería'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(20),
          child: GridView.builder(
            clipBehavior: Clip.none,
            itemCount: categoria.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (BuildContext context, int index) {
              return ContenidoTarjeta(
                text: categoria.elementAt(index),
                imagen: imagen.elementAt(index),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ContenidoTarjeta extends StatelessWidget {
  const ContenidoTarjeta({
    Key? key,
    required this.text,
    required this.imagen,
  }) : super(key: key);
  final String text;
  final String imagen;

  @override
  Widget build(BuildContext context) {
    final size = 165;

    return Neumorphic(
      child: Column(
        children: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return InfoPage(item: text);
                },
              ),
            ),
            child: Container(
              width: double.infinity,
              height: size * 0.9,
              child: Image.network(
                imagen,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
