import 'package:flutter/material.dart';
import 'package:praktikum_3/models/tourism_place.dart';
import 'package:praktikum_3/providers/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class DoneTourismList extends StatelessWidget {
  const DoneTourismList({super.key});

  @override
  Widget build(BuildContext context) {
    DoneTourismProvider doneTourismProvider =
        Provider.of<DoneTourismProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        title: const Text("Wisata Telah Dikunjungi"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: doneTourismProvider.doneTourismList.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                doneTourismProvider.complete(doneTourismProvider.doneTourismList[index], false);
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  doneTourismProvider
                                      .doneTourismList[index].imageAsset,
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              doneTourismProvider.doneTourismList[index].name,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              doneTourismProvider.doneTourismList[index].location,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: const Icon(Icons.done, color: Colors.blueAccent,),
                    ),
                  ],
                ),
              ),
            );
            ;
          },
        ),
      ),
    );
  }
}
