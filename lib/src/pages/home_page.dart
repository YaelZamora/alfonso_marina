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
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
          decoration: BoxDecoration(
            color: const Color(0xffE5E5E5),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade700,
                blurRadius: 2,
                offset: const Offset(2, 1),
                spreadRadius: 2,
              ),
            ],
          ),
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return InfoPage(item: categoria.elementAt(index));
                        },
                      ),
                    );
                  },
                  title: Text(categoria.elementAt(index)),
                  trailing: NeumorphicCheckbox(
                    value: checked[index],
                    onChanged: (value) {
                      setState(() {
                        checked[index] = value;
                      });
                    },
                  ));
            },
            itemCount: categoria.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ),
        ),
      ),
    );
  }
}
