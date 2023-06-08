import 'package:flutter/material.dart';
import 'package:medivet/model/pet_model.dart';

class Reservations_2 extends StatefulWidget {
  const Reservations_2({super.key});

  @override
  State<Reservations_2> createState() => _ReservationsState_2();
}

class _ReservationsState_2 extends State<Reservations_2> {
  List<String> _listServices = [];

  String _selectedServices = '';

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
                'Silahkan Pilih Layanan',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              DropdownButtonFormField<String>(
                value: _selectedServices,
                onChanged: (value) {
                  setState(() {
                    _selectedServices = value!;
                  });
                },
                items: _listServices.map((services) {
                  return DropdownMenuItem<String>(
                    value: services,
                    child: Text(services.toString()),
                  );
                }).toList(),
                decoration: InputDecoration(
                  hintText: 'Silahkan Pilih Layanan',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 183, 183, 183)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        color: Colors.grey,
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
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
