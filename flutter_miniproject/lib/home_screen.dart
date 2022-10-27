import 'package:flutter/material.dart';
import 'package:flutter_miniproject/data_resep.dart';
import 'package:flutter_miniproject/detail_resep.dart';
import 'package:flutter_miniproject/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => InitState();
}

class InitState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb4c8ea),
        centerTitle: true,
        title: Text(
          'Recepeo',
          style: TextStyle(
            color: Color(0xffBA1A1A),
            fontWeight: FontWeight.bold,
            letterSpacing: 5,
            fontSize: 24,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()))
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: dataResep.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(resepp: dataResep[index])));
              },
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          dataResep[index].image,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dataResep[index].nama,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                        Padding(padding: const EdgeInsets.all(5.0)),
                        Text(
                          '${dataResep[index].desk}',
                          style: TextStyle(color: Color(0xff978F88)),
                        ),
                        Padding(padding: const EdgeInsets.all(16.0)),
                        SizedBox(
                          height: 30,
                        ),
                        ClipOval(
                          child: Material(
                            color: Color(0xfff7cac9),
                            child: InkWell(
                              splashColor: Colors.red,
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Icon(Icons.favorite),
                              ),
                              onTap: () {},
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          })),
    );
  }
}
