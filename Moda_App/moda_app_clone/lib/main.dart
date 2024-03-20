import 'package:flutter/material.dart';
import 'package:moda_app_clone/detay.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0), // Çizgi yüksekliği
          child: Divider(
            color: Colors.black, // Çizgi rengi
            thickness: 1.0, // Çizgi kalınlığı
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            color: Colors.teal,
            onPressed: () {},
            icon: const Icon(Icons.camera, size: 25),
            tooltip: 'Tara',
          )
        ],
        title: const Text(
          'Moda Marka',
          style: TextStyle(
              fontFamily: 'ModaIcin',
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          //Ust Tarafdaki profil LISTESI
          Container(
            //  color: Colors.green,
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsetsDirectional.all(15),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 13,
                ),
                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
                const SizedBox(
                  width: 13,
                ),
                listeElemani('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 13,
                ),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 13,
                ),
                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
                const SizedBox(
                  width: 13,
                ),
                listeElemani('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 13,
                ),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 13,
                ),
                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
                const SizedBox(
                  width: 13,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(15),
              //color: Colors.blue,
              child: Container(
                height: 550,
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/model1.jpeg',
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 150,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontFamily: 'ModaIcin',
                                    fontSize: 25,
                                    color: Colors.black),
                              ),
                              Text(
                                '34 mins ago',
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert)),
                        )
                      ],
                    ),
                    SizedBox(width: 10),
                    const Text(
                      'Explore elegance with our latest fashion collection! Stay on trend this season and elevate your style with our exclusive designs. Start shopping now and showcase your unique fashion statement!',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: ((context) => const Detay(
                                      imagePath: 'assets/modelgrid1.jpeg'))),
                            );
                          },
                          child: Hero(
                            tag: 'assets/modelgrid1.jpeg',
                            child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/modelgrid1.jpeg'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(7))),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: ((context) => const Detay(
                                          imagePath:
                                              'assets/modelgrid2.jpeg'))),
                                );
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                    height: 100,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/modelgrid2.jpeg'),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(7))),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: ((context) => const Detay(
                                          imagePath:
                                              'assets/modelgrid3.jpeg'))),
                                );
                              },
                              child: Hero(
                                tag: 'assets/modelgrid3.jpeg',
                                child: Container(
                                    height: 100,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/modelgrid3.jpeg'),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(7))),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            '#LouisVuitton',
                            style: TextStyle(
                              fontFamily: 'ModaIcin',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(width: 7),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            '#CHANEL',
                            style: TextStyle(
                                fontFamily: 'ModaIcin', color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 226, 220, 220), // Çizgi rengi
                      thickness: 1.0, // Çizgi kalınlığı
                    ),
                    SizedBox(height: 20),
                    const Row(
                      children: [
                        Icon(Icons.reply, size: 30),
                        Text('2.5k'),
                        SizedBox(width: 25),
                        Icon(Icons.comment, size: 25),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover)),
              ),
            )
          ],
        ),
        Padding(padding: EdgeInsets.all(5)),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 170, 111, 90),
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Center(
              child: Text(
            'Follow',
            style: TextStyle(
                fontFamily: 'ModaIcin', fontSize: 15, color: Colors.white),
          )),
        ),
      ],
    );
  }
}
