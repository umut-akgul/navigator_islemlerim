import 'package:flutter/material.dart';

class HataSayfasi extends StatelessWidget {
  const HataSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: Text("Not Found Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Aranan sayfa bulunamadı",
              style: Theme.of(
                context,
              ).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
