import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newtry/models/homesnmodels.dart';
import 'package:newtry/models/homesnmodels.dart';
import 'package:newtry/routes/myroutes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Build banu agadai nai data aaisakeko huncha
    loadData();
  }

//data load garni method
  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    //data nikalni json bata
    //for example image xa vani Imageassets(....) tesari nai json ko lai chai root bundle;
    var jsonayecha = await rootBundle.loadString("assets/files/sample2.json");
    // print(jsonayecha);

    //to decode and encode json(import json convert)
    //string lai object maw lancha
    var decodeddata = jsonDecode(jsonayecha);
    // print(decodeddata);
    //aba yeslai map garni vaneko json ko id hamro id maw basnu paryo
    var productsData = decodeddata['products'];
    Model.item = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    // build method lai feri call garna ko lai
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text("Model App Bar"),
        leading: const Icon(Icons.drag_handle),
      ),
      body: (Model.item != null && Model.item.isNotEmpty)
          ? ListView.builder(
              itemCount: Model.item.length,
              itemBuilder: (context, index) {
                var list = Model.item[index];
                return Card(
                  color: Colors.white,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {},
                    leading: Image.network(list.image),
                    title: Text(list.name),
                    subtitle: Text(list.desc),
                    trailing: Text(list.price.toString()),
                  ),
                );
              })
          : const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: const Icon(Icons.chat),
        backgroundColor: const Color(0xFF162A49),
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.myTodo);
        },
      ),
    );
  }
}
