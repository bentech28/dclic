import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Point d'entrée de l'application
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter', // Titre de l'application
      debugShowCheckedModeBanner: false, // Cache le bandeau "DEBUG"
      theme: ThemeData(
        primarySwatch: Colors.blue, // Couleur principale
        visualDensity: VisualDensity.adaptivePlatformDensity, // Ajuste le rendu selon la plateforme
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu), // Icône menu hamburger
            onPressed: () {
              print('Menu ouvert');
            },
          ),
          title: Text('Page d\'accueil'), // Titre centré
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          elevation: 4.0,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Rechercher',
              onPressed: () {
                print('Recherche lancée');
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              tooltip: 'Notifications',
              onPressed: () {
                print('Voir notifications');
              },
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                print('Menu sélectionné : $value');
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'profil',
                  child: Text('Profil'),
                ),
                PopupMenuItem(
                  value: 'parametres',
                  child: Text('Paramètres'),
                ),
                PopupMenuItem(
                  value: 'deconnexion',
                  child: Text('Déconnexion'),
                ),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          // Permet de scroller si contenu dépasse la hauteur de l'écran
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Padding autour du contenu
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, // Étire les cards sur toute la largeur
              children: [
                Center(
                  child: Text(
                    'Bienvenue sur Flutter !',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20), // Espace vertical

                // Première Card
                Card(
                  elevation: 4, // Ombre portée
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Bords arrondis
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card 1 - Introduction',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text('Ceci est une description simple de la première carte.'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16), // Espace entre les cartes

                // Deuxième Card
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.lightBlue[50], // Couleur de fond claire
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card 2 - Fonctionnalités',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text('Ici on peut parler des fonctionnalités de Flutter.'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // Troisième Card
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.lightGreen[50],
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card 3 - Widgets',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text('Les widgets sont la base de toute application Flutter.'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // Quatrième Card
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.orange[50],
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card 4 - Conclusion',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text('Flutter permet de créer des apps rapides et belles.'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Bouton flottant pressé');
          },
          child: Icon(Icons.add),
          tooltip: 'Ajouter',
        ),
      ),
    );
  }
}
