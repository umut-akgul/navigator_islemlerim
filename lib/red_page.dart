import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Red Page"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Red Page",
              style: Theme.of(
                context,
              ).textTheme.headlineMedium,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {
                Navigator.of(
                  context,
                ).pushNamed("/yellowPage2");
              },
              child: Text("Sarı sayfaya git"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {},
              child: Text("Yeşil sayfaya git"),
            ),
          ],
        ),
      ),
    );
  }
}
