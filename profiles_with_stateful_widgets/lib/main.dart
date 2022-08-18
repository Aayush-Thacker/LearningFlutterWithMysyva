import 'package:flutter/material.dart';
import './support_classes.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileApp(),
  ));
}

class ProfileApp extends StatefulWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  State<ProfileApp> createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {
  List<ProfileDetails> allProfiles = [
    ProfileDetails('assets/arianagrande.png', 'Ariana Grande',
        'American singer, songwriter, and actress. Her four-octave vocal range has received critical acclaim, and her personal life has been the subject of widespread media attention.'),
    ProfileDetails('assets/justinbieber.jpg', 'Justin Bieber',
        'Canadian singer. Bieber is widely recognised for his genre-melding musicianship and has played an influential role in modern-day popular music.'),
    ProfileDetails('assets/taylorswift.jpg', 'Taylor Swift',
        'American singer-songwriter. Her discography spans multiple genres, and her narrative songwriting—often inspired by her personal life—has received critical praise and widespread media coverage.')
  ];

  Widget profileCards(ProfileDetails profile) {
    return Card(
      margin: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(profile.getAsset()),
            radius: 40.0,
          ),
          Divider(
            height: 20.0,
            color: Colors.black,
          ),
          Text(
            profile.getName(),
            style: TextStyle(
              fontSize: 50,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            profile.getDetails(),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.0,
          ),
          TextButton.icon(
            onPressed: () {
              setState(() {
                allProfiles.remove(profile);
              });
            },
            icon: Icon(Icons.delete),
            label: const Text('Delete Profile'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profiles'),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.greenAccent[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:
              allProfiles.map((profile) => profileCards(profile)).toList(),
        ),
      ),
    );
  }
}
