import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/model/home_model.dart';
import '../../home/provider/home_provider.dart';

class DeitalScreen extends StatefulWidget {
  const DeitalScreen({super.key});

  @override
  State<DeitalScreen> createState() => _DeitalScreenState();
}

class _DeitalScreenState extends State<DeitalScreen> {
  HomeProvider? providerW;
  HomeProvider? providerR;

  void initState() {
    super.initState();
    context.read<HomeProvider>().getQuotesAPI();
  }

  @override
  Widget build(BuildContext context) {
    providerW = context.watch<HomeProvider>();
    providerR = context.read<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailScreen"),
      ),
      body: ListView.builder(
        itemCount: providerW!.resultsList.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                child: Card(
                  child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topRight: Radius.circular(25)),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffae1232),
                            Color(0xff430d36),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "${providerW!.resultsList[index].content}",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
