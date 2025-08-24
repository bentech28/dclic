import 'package:flutter/material.dart';
void main() => runApp(MonAppli());
class MonAppli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magazine Infos',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: pageAccueil(),
    );
  }
}

class pageAccueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magazine Infos',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
        backgroundColor: Colors.pink,
        centerTitle: true,

        leading: IconButton(icon:  Icon(Icons.menu), onPressed: () {
          print("Menu cliqué !");
        },),
        actions: [IconButton(icon:  Icon(Icons.search), onPressed: () {
          print("Recherche cliqué !");
        },),],

      ),
      body: Center(
        child: Image.asset(
          '',
          width: 400,
          height: 500,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Tu as cliqué dessus')),
          );
        },
        backgroundColor: Colors.pink,
        child: Text(
          'Click',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
