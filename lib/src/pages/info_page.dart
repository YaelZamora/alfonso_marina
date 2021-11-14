import 'package:alfonso_marina/src/lists/preguntas_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class InfoPage extends StatefulWidget {
  InfoPage({
    Key? key,
    required this.item,
  }) : super(key: key);
  final String item;

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  List<bool> checked = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> preguntas = preguntasList;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.9,
              child: ListView.separated(
                itemCount: preguntas.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(preguntas.elementAt(index)),
                    trailing: NeumorphicCheckbox(
                      style: const NeumorphicCheckboxStyle(),
                      value: checked[index],
                      onChanged: (value) {
                        setState(() {
                          checked[index] = value;
                        });
                      },
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              ),
            ),
            SizedBox(
              width: size.width * 0.8,
              height: 75,
              child: NeumorphicButton(
                style: const NeumorphicStyle(
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    'Enviar',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
