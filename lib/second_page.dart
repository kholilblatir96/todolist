import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final VoidCallback toggleTheme;

  const SecondPage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Kedua'),
        backgroundColor: theme.colorScheme.secondary,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme,
            tooltip: 'Ubah Tema',
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              theme.colorScheme.background,
              theme.colorScheme.secondary.withOpacity(0.2),
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.article_rounded,
                          size: 60,
                          color: theme.colorScheme.secondary,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Halaman Kedua',
                          style: theme.textTheme.displayLarge!.copyWith(
                            color: theme.colorScheme.secondary,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Ini adalah halaman kedua aplikasi dengan styling berbeda. Perhatikan penggunaan gradien dan komponen Card.',
                          style: theme.textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text(
                    'Kembali ke Halaman Utama',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: theme.colorScheme.secondary,
                    side: BorderSide(color: theme.colorScheme.secondary),
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Ini adalah toast message!'),
              backgroundColor: theme.colorScheme.secondary,
              duration: const Duration(seconds: 2),
            ),
          );
        },
        backgroundColor: theme.colorScheme.secondary,
        child: const Icon(Icons.notifications),
      ),
    );
  }
}