import 'package:flutter/material.dart';
import 'package:praktikum_2/percobaan.dart';
import 'package:praktikum_2/tugas.dart';
import 'latihan.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  int counter = 0;
  String latihan = "Bilangan genap dan kelipatan tiga : ";
  String tugas = "Bilangan prima : ";
  String ganjil = "Bilangan Ganjil: ";
  String genap = "Bilangan Genap: ";
  void incremental() {
    setState(() {
      counter++;
      if (counter % 2 == 0) {
        genap += "$counter, ";
      } else {
        ganjil += "$counter, ";
      }

      if (counter > 30) {
        counter = 1;
        tugas = "Bilangan prima : ";
        latihan = "Bilangan genap dan kelipatan tiga : ";
        ganjil = "Bilangan Ganjil: ";
        genap = "Bilangan Genap: ";
      }

      if (counter % 2 == 0 && counter % 3 == 0) {
        latihan += "$counter, ";
      }
      if (prima(counter)) {
        tugas += " $counter, ";
      }
    });
  }

  bool prima(int bil) {
    if (bil == 1) {
      return false;
    }
    for (int i = 1; i < bil - 1; i++) {
      if (bil % (i + 1) == 0) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(child: Text("Percobaan")),
                Tab(child: Text("Latihan")),
                Tab(child: Text("Tugas")),
              ],
            ),
            title: const Text('Praktikum Minggu 2'),
          ),
          body: TabBarView(
            children: [
              percobaanWidget(counter, genap, ganjil),
              latihanWidget(counter, latihan),
              tugasWidget(counter, tugas)
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: incremental,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
