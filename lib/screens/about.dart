import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                const Text(
                  'About IfPost',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                const SizedBox(height: 10),
                Text(
                  'IfPost is a social media app that allows users to share their moments and experiences with others. Join our community and start posting today!',
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Developers:',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                const SizedBox(height: 15),
                DeveloperInfo(name: 'Husain Munif'),
                DeveloperInfo(name: 'Muhammad Fadhil Putra'),
                DeveloperInfo(name: 'Damar Arya Pinilih'),
                DeveloperInfo(name: 'Fikri Asshiddiqi'),
                DeveloperInfo(name: 'Muhammad Amal Wildan'),
                DeveloperInfo(name: 'Tubagus Thoriq Akbar'),
                DeveloperInfo(name: 'Irsyad Hadi Annafi'),
                DeveloperInfo(name: 'Elga Syahira'),
                DeveloperInfo(name: 'Akbar Ragil Pangestu'),
                DeveloperInfo(name: 'Berliani Nasywa Fitri'),
                DeveloperInfo(name: 'Muhamad Rizal Rifaldi'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DeveloperInfo extends StatelessWidget {
  final String name;

  DeveloperInfo({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const Icon(Icons.person, size: 20, color: Colors.blue),
          const SizedBox(width: 10),
          Text(name, style: TextStyle(fontSize: 18, color: Colors.grey[800])),
        ],
      ),
    );
  }
}
