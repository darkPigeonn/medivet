import 'package:flutter/material.dart';
import 'package:medivet/model/pet_model.dart';
import 'package:medivet/page/reservations/reservations_2.dart';

class Reservations extends StatefulWidget {
  const Reservations({super.key});

  @override
  State<Reservations> createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
  List<String> _selectedAnimals = [];

  List<String> _animals = [
    'Anjing',
    'Kucing',
    'Hamster',
    'Kelinci',
    'Ikan',
    'Burung',
    'Ular',
    'Kuda',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Buat Reservasi',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Silahkan Pilih Hewan Kesayangan Anda',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: _animals.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(_animals[index]),
                    value: _selectedAnimals.contains(_animals[index]),
                    onChanged: (value) {
                      if (value!) {
                        setState(() {
                          _selectedAnimals.add(_animals[index]);
                        });
                      } else {
                        setState(() {
                          _selectedAnimals.remove(_animals[index]);
                        });
                      }
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                child: Text('Kembali'),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text('Selanjutnya'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Reservations_2()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
