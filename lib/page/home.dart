import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text('Selamat Malam'),
                      ),
                      Container(
                        child: Text('Noel'),
                      ),
                    ],
                  ),
                  Container(
                    child: Icon(Icons.notifications),
                  )
                ],
              ),
            ),
            //section menu
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Buat Reservasi'),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: SizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Buat Reservasi'),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: SizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Buat Reservasi'),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: SizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Buat Reservasi'),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: SizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Buat Reservasi'),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pages),
          label: 'Reservasi',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profil',
        ),
      ]),
    );
  }
}
