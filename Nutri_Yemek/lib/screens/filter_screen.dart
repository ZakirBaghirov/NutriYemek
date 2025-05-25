import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filtre', style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.red),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          ExpansionTile(
            title: Text('Karbonhidrat'),
            children: [
              Slider(value: 50, min: 0, max: 100, onChanged: (value) {})
            ],
          ),
          ExpansionTile(
            title: Text('Yağ'),
            children: [
              Slider(value: 50, min: 0, max: 100, onChanged: (value) {})
            ],
          ),
          ExpansionTile(
            title: Text('Protein'),
            children: [
              Slider(value: 50, min: 0, max: 100, onChanged: (value) {})
            ],
          ),
          ExpansionTile(
            title: Text('Şeker'),
            children: [
              Slider(value: 50, min: 0, max: 100, onChanged: (value) {})
            ],
          ),
          ExpansionTile(
            title: Text('Tuz'),
            children: [
              Slider(value: 50, min: 0, max: 100, onChanged: (value) {})
            ],
          ),
          SwitchListTile(
            title: Text('Şeker Hastası mı?'),
            value: false,
            onChanged: (bool value) {},
          ),
          SwitchListTile(
            title: Text('Kolesterol Hastası mı?'),
            value: false,
            onChanged: (bool value) {},
          ),
          SwitchListTile(
            title: Text('Diyabet Hastası mı?'),
            value: false,
            onChanged: (bool value) {},
          ),
          ExpansionTile(
            title: Text('Restoranlar'),
            children: [Text('Restoran Filtreleri')],
          ),
          ExpansionTile(
            title: Text('Yemekler'),
            children: [Text('Yemek Filtreleri')],
          ),
          ExpansionTile(
            title: Text('Puan'),
            children: [Text('Puan Filtreleri')],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Filtreleri Uygula'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
