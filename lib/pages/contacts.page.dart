import 'package:flutter/material.dart';
import 'package:demo_app_2/widgets/mydrawer.widget.dart';

class ContactsPage extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {
      'name': 'Saad El Mabrouk',
      'email': 'saad.elmabrouk@icloud.com',
      'phone': '+212 612345678'
    },
    {
      'name': 'Kylian Mbappe.',
      'email': 'k.mbappe@realmadrid.com',
      'phone': '+34 623456789'
    },
    {
      'name': 'Fede Valverdi',
      'email': 'f.valverde@example.com',
      'phone': '+34 634510290'
    },
    {
      'name': 'Arda Guler',
      'email': 'a.guler@realmadrid.com',
      'phone': '+34 634712890'
    },
    {
      'name': 'Brahim Diaz',
      'email': 'b.diaz@realmadrid.com',
      'phone': '+34 634567890'
    },
    {
      'name': 'Achraf Hakimi',
      'email': 'a.hakimi@psg.com',
      'phone': '+33 630123890'
    },
    {
      'name': 'Yassine bounou',
      'email': 'y.bounou@hilal.com',
      'phone': '+966 630123890'
    },
    {
      'name': 'Dean Huijsen',
      'email': 'd.huijsen@realmadrid.com',
      'phone': '+34 630123980'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: const Text("Contacts")),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          final initials = contact['name']!.split(' ').map((e) => e[0]).join();

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Text(
                  initials,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(contact['name']!),
              subtitle: Text("${contact['email']}\n${contact['phone']}"),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
              },
            ),
          );
        },
      ),
    );
  }
}
