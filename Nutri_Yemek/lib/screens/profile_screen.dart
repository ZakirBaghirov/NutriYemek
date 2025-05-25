import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profilim'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Filtreler'),
            trailing: Icon(Icons.filter_list),
            onTap: () {
              Navigator.pushNamed(context, '/filter');
            },
          ),
          // Diğer profil bilgileri burada olacak
        ],
      ),
    );
  }
}
