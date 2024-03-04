import 'package:flutter/material.dart';
import 'package:kiatest/screens/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Accueil',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Bienvenue A Votre Agence Automobile\n                         AutoRepar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Ajoutez la fonctionnalité pour le premier bouton
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text(
                    'Ajouter un\n véhicule',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ajoutez la fonctionnalité pour le deuxième bouton
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text(
                    'Tarifs',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ajoutez la fonctionnalité pour le troisième bouton
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text(
                    '   Véhicule de\nremplacement',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Ajoutez la fonctionnalité pour le bouton "ASSISTANCE TECHNIQUE"
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                elevation: 3,
                minimumSize: Size(350, 40),
                side: BorderSide(color: Colors.red),
              ),
              child: Text(
                'ASSISTANCE TECHNIQUE',
                style: TextStyle(fontSize: 13, color: Colors.red),
              ),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return ArticleWidget(article: articles[index]);
              },
            ),
          ),
             Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Véhicules Neufs KIA',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          
          
          CarouselSlider(
            
            items: [
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  'assets/images/evv.jpg', // Ajoutez le chemin de votre image
                  fit: BoxFit.cover,
                ),
              ),
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  'assets/images/evvv.jpg', // Ajoutez le chemin de votre image
                  fit: BoxFit.cover,
                ),
              ),
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  'assets/images/ev.jpg', // Ajoutez le chemin de votre image
                  fit: BoxFit.cover,
                ),
              ),
              
             
             
           
            ],
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}

class ArticleWidget extends StatelessWidget {
  final Article article;

  ArticleWidget({required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                article.image,
                width: 150,
                height: 150,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.black.withOpacity(0.5),
                ),
                padding: EdgeInsets.all(8.0),
                child: Text(
                  article.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          article.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            article.description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        ),
        onTap: () {
          // Ajoutez la fonctionnalité lorsque l'article est cliqué
        },
      ),
    );
  }
}

class Article {
  final String title;
  final String description;
  final String image;

  Article(
      {required this.title, required this.description, required this.image});
}

List<Article> articles = [
  Article(
    title: "Hello",
    description:
        "Dans le but de renforcer sa présence et sahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh  ",
    image: "assets/images/ha.jpg",
  ),
  // Ajoutez d'autres articles si nécessaire
];
