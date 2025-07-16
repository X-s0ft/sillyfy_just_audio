import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('About'),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Sillyfy is a simple app for listening to music.',
                textAlign: TextAlign.center,
              ),
            ),

            Text('Just relax and enjoy musics :)'),
          ],
        ),
      ),
    );
  }
}
